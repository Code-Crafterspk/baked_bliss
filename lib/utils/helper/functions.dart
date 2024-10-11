import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:baked_bliss/common/exceptions/database_exception.dart';
import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:http/http.dart';

Color rgba(int r, int g, int b, double opacity) {
  return Color.fromRGBO(r, g, b, opacity);
}

String handleApiResponse(Response response) {
  if (response.statusCode == 200 || response.statusCode == 201) {
    return response.body;
  } else {
    String errorMessage;
    switch (response.statusCode) {
      case 400:
        errorMessage =
            'Bad Request: The request was invalid or cannot be served.';
        break;
      case 401:
        errorMessage =
            'Unauthorized: Authentication is required and has failed.';
        break;
      case 403:
        errorMessage =
            'Forbidden: You do not have permission to access this resource.';
        break;
      case 404:
        errorMessage = 'Not Found: The requested resource could not be found.';
        break;
      case 500:
        errorMessage =
            'Internal Server Error: The server encountered an unexpected condition.';
        break;
      default:
        errorMessage = 'Error: ${response.reasonPhrase}';
        break;
    }

    throw ServerException(
      errorCode: response.statusCode.toString(),
      message: errorMessage,
    );
  }
}

Future<T> handleApiException<T>(Future<T> Function() action) async {
  try {
    return await action();
  } on ServerException {
    rethrow;
  } on SocketException catch (e) {
    throw ServerException(errorCode: 'network_error', message: e.message);
  } on HttpException catch (e) {
    throw ServerException(errorCode: 'server_error', message: e.message);
  } on FormatException catch (e) {
    throw ServerException(errorCode: 'parsing_error', message: e.message);
  } on TimeoutException catch (e) {
    throw ServerException(
        errorCode: 'timeout_error', message: e.message ?? 'Timeout error');
  } catch (e) {
    throw ServerException(errorCode: 'unknown', message: 'Unknown error');
  }
}

Future<T> handleLocalDatabaseException<T>(Future<T> Function() action) async {
  try {
    return await action();
  } catch (e) {
    throw ServerException(message: 'Unknown error', errorCode: 'unknown');
  }
}
