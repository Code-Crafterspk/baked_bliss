import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/features/shared/data/data_source/user_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

class UserRemoteDataSourceImp implements UserDataSource {
  final FirebaseAuth _auth;
  final Client _client;
  final baseUrl = 'https://192.168.1.76/api/';

  UserRemoteDataSourceImp({required FirebaseAuth auth, required Client client})
      : _auth = auth,
        _client = client;

  @override
  Future<void> addAddress(AddressModel address,
      {required String userId}) async {
    return await handleApiException(() async {
      final url = p.join(baseUrl, 'user/address/add');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(address.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<void> clearUser() async {
    return await handleApiException(() async {
      final user = _auth.currentUser;
      if (user == null) {
        throw ServerException(
            errorCode: 'user-not-found', message: 'User not found');
      }
      final url = p.join(baseUrl, 'user/clear');
      final response = await _client.post(
        Uri.parse('$url?userId=${user.uid}'),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<List<AddressModel>> getAddresses({required String userId}) async {
    return await handleApiException(() async {
      final url = p.join(baseUrl, 'user/address/get');
      final response = await _client.get(
        Uri.parse('$url?userId=$userId'),
        headers: {'Content-Type': 'application/json'},
      );
      final data = handleApiResponse(response);
      return (jsonDecode(data) as List)
          .map<AddressModel>((e) => AddressModel.fromJson(e))
          .toList();
    });
  }

  @override
  Future<UserModel> getUser() async {
    return await handleApiException(() async {
      final user = _auth.currentUser;
      if (user == null) {
        throw ServerException(
            errorCode: 'user-not-found', message: 'User not found');
      }
      final url = p.join(baseUrl, 'user/get');
      final response = await _client.get(
        Uri.parse('$url?userId=${user.uid}'),
        headers: {'Content-Type': 'application/json'},
      );
      final data = handleApiResponse(response);
      return UserModel.fromJson(jsonDecode(data));
    });
  }

  @override
  Future<void> removeAddress(AddressModel address,
      {required String userId}) async {
    return await handleApiException(() async {
      final url = p.join(baseUrl, 'user/address/remove');
      final response = await _client.get(
        Uri.parse('$url?userId=$userId').replace(
          queryParameters: {
            'addressId': address.addressId,
            'userId': userId,
          },
        ),
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<void> saveUser(UserModel userModel) async {
    return await handleApiException(() async {
      final url = p.join(baseUrl, 'user/save');
      final response = await _client.post(
        Uri.parse('$url?userId=${userModel.userId}'),
        body: jsonEncode(userModel.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<void> updateAddress(AddressModel address,
      {required String userId}) async {
    return await handleApiException(() async {
      final url = p.join(baseUrl, 'user/address/update');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(address.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<void> updateUser(UserModel userModel) async {
    return await handleApiException(() async {
      final url = p.join(baseUrl, 'user/user/update');
      Response? response;

      if (userModel.imageUrl?.startsWith('http') ?? true) {
        response = await _client.post(
          Uri.parse(url),
          body: jsonEncode(userModel.toJson()),
          headers: {
            'Content-Type': 'application/json',
          },
        );
        handleApiResponse(response);
      } else {
        final compressedImage = await compressImage(userModel.imageUrl!);
        final request = MultipartRequest('POST', Uri.parse(url));

        final multipartFile = MultipartFile.fromBytes(
          'image',
          compressedImage!,
          filename: userModel.imageUrl!.split('/').last,
        );

        request.files.add(multipartFile);
        request.fields['userId'] = userModel.userId;
        request.fields['fullName'] = userModel.fullName;

        if (userModel.email != null) {
          request.fields['email'] = userModel.email!;
        }
        if (userModel.phoneNo != null) {
          request.fields['phoneNo'] = userModel.phoneNo!;
        }

        final stream = await request.send();
        await for (final _ in stream.stream) {}
      }
    });
  }

  Future<Uint8List?> compressImage(String imagePath) async {
    return await FlutterImageCompress.compressWithFile(
      imagePath,
      minHeight: 100,
      minWidth: 100,
      quality: 50,
      format: CompressFormat.jpeg,
    );
  }
}
