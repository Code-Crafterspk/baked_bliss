import 'dart:developer';
import 'dart:io';

import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/cart/cart_model.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/model/delivery/delivery_model.dart';
import 'package:baked_bliss/common/model/ingredient/ingredient_model.dart';
import 'package:baked_bliss/common/model/product/variation_model.dart';
import 'package:baked_bliss/common/model/promotion/promotion_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/utils/local_database/table/table.dart';
import 'package:baked_bliss/utils/local_database/type_converter/converters.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'local_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [
  UserTable,
  AddressTable,
  ProductTable,
  UserTable,
  CartProductTable,
  CartTable,
  SettingTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> clearUserData() async {
    await delete(userTable).go();
  }

  Future<void> createUser(UserModel userEntity) async {
    log('createUser');
    await into(userTable).insert(
      UserEntity.fromJson(userEntity.toJson()),
      mode: InsertMode.insertOrReplace,
    );
  }

  Future<UserModel?> getUser() async {
    final userEntity = await select(userTable).getSingle();
    final addressEntities = await select(addressTable).get();

    return UserModel.fromJson({
      ...userEntity.toJson(
        serializer: const ValueSerializer.defaults(
            serializeDateTimeValuesAsString: true),
      ),
      'addresses': addressEntities
          .map((e) => AddressModel.fromJson(e.toJson()))
          .toList(),
    });
  }

  Future<UserModel> updateUser(UserModel userModel) async {
    await batch((batch) {
      batch.update(
        userTable,
        UserEntity.fromJson(userModel.toJson()),
        where: (table) => table.userId.equals(userModel.userId),
      );

      batch.deleteAll(addressTable);
      for (final address in userModel.addresses!) {
        batch.insert(addressTable, AddressEntity.fromJson(address.toJson()));
      }
    });
    return userModel;
  }

  Future<void> addAddress(AddressModel addressModel) async {
    await into(addressTable)
        .insert(AddressEntity.fromJson(addressModel.toJson()));
  }

  Future<void> removeAddress(AddressModel addressModel) async {
    await (delete(addressTable)
          ..where((tbl) => tbl.addressId.equals(addressModel.addressId)))
        .go();
  }

  Future<AddressModel> updateAddress(AddressModel addressModel) async {
    await (update(addressTable)
          ..where((tbl) => tbl.addressId.equals(addressModel.addressId)))
        .write(AddressEntity.fromJson(addressModel.toJson()));
    return addressModel;
  }

  Future<List<AddressModel>> getAddresses() async {
    final addressEntities = await select(addressTable).get();
    return addressEntities
        .map((e) => AddressModel.fromJson(e.toJson()))
        .toList();
  }

  Future<void> clearCart() async {
    await delete(cartProductTable).go();
  }

  Future<CartProductModel> addProductToCart(
      CartProductModel cartProductModel) async {
    final cartProduct = CartProductEntity.fromJson(cartProductModel.toJson());
    await into(cartProductTable).insert(cartProduct);
    return cartProductModel;
  }

  Future<void> removeProductFromCart(CartProductModel cartProductModel) async {
    await (delete(cartProductTable)
          ..where((tbl) => tbl.cartId.equals(cartProductModel.cartId)))
        .go();
  }

  Future<CartProductModel> updateCartProduct(
      CartProductModel cartProductModel) async {
    await (update(cartProductTable)
          ..where((tbl) => tbl.cartId.equals(cartProductModel.cartId)))
        .write(CartProductEntity.fromJson(cartProductModel.toJson()));
    return cartProductModel;
  }

  Future<List<CartProductModel>> getCartProducts() async {
    final cartProductEntities = await select(cartProductTable).get();
    return cartProductEntities
        .map((e) => CartProductModel.fromJson(e.toJson()))
        .toList();
  }

  Future<CartModel> getCart() async {
    final cartProductEntities = await select(cartProductTable).get();
    final cartProducts = cartProductEntities
        .map((e) => CartProductModel.fromJson(e.toJson()))
        .toList();
    final cartEntity = await select(cartTable).getSingle();
    return CartModel.fromJson({
      ...cartEntity.toJson(),
      'items': cartProducts,
    });
  }

  Future<void> addAddresses(List<AddressModel> addresses) async {
    await batch((batch) {
      for (final address in addresses) {
        batch.insert(addressTable, AddressEntity.fromJson(address.toJson()));
      }
    });
  }

  Future<void> addCart(CartModel cart) async {
    await batch((batch) {
      batch.insert(cartTable, CartEntity.fromJson(cart.toJson()));
      for (final item in cart.items) {
        batch.insert(
            cartProductTable, CartProductEntity.fromJson(item.toJson()));
      }
    });
  }
}
