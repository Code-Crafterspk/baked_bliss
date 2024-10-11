import 'package:baked_bliss/utils/local_database/type_converter/converters.dart';
import 'package:drift/drift.dart';

@DataClassName('UserEntity')
class UserTable extends Table {
  TextColumn get userId => text()();
  TextColumn get fullName => text().nullable()();
  TextColumn get email => text().nullable()();
  TextColumn get imageUrl => text().nullable()();
  TextColumn get phoneNo => text().nullable()();
  DateTimeColumn get dateJoined => dateTime().nullable()();
  TextColumn get pushToken => text().nullable()();
  @override
  Set<Column> get primaryKey => {userId};
}

@DataClassName('AddressEntity')
class AddressTable extends Table {
  TextColumn get addressId => text()();
  TextColumn get street => text()();
  TextColumn get city => text()();
  TextColumn get state => text()();
  TextColumn get postalCode => text()();
  TextColumn get country => text()();
  TextColumn get landmark => text().nullable()();
  TextColumn get apartmentNumber => text().nullable()();
  TextColumn get phoneNumber => text().nullable()();
  @override
  Set<Column> get primaryKey => {addressId};
}

@DataClassName('ProductEntity')
class ProductTable extends Table {
  TextColumn get productId => text()();
  TextColumn get title => text()();
  TextColumn get images =>
      text().map(const ListOfStringConverter()).nullable()();
  TextColumn get thumbnail => text()();
  TextColumn get category =>
      text().map(const ListOfCategoryConverter()).nullable()();
  IntColumn get ratingCount => integer().nullable()();
  RealColumn get rating => real()();
  RealColumn get price => real()();
  TextColumn get ingredient =>
      text().map(const ListOfIngredientConverter()).nullable()();
  TextColumn get variations =>
      text().map(const ListOfVariationConverter()).nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get tagline => text().nullable()();
  RealColumn get salePrice => real().nullable()();
  TextColumn get promotion =>
      text().map(const ListOfPromotionConverter()).nullable()();
  BoolColumn get isAvailable => boolean()();

  @override
  Set<Column> get primaryKey => {productId};
}

@DataClassName('SettingEntity')
class PreferenceTable extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();
  @override
  Set<Column> get primaryKey => {key};
}

@DataClassName('CartProductEntity')
class CartProductTable extends Table {
  TextColumn get cartId => text()();
  RealColumn get quantity => real()();
  BoolColumn get isAvailable => boolean()();
  DateTimeColumn get addedAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  RealColumn get deliveryCharge => real()();
  RealColumn get totalPrice => real()();
  TextColumn get variation => text().map(const VariationConverter())();
  TextColumn get product => text().references(ProductTable, #productId)();
}

@DataClassName('CartEntity')
class CartTable extends Table {
  TextColumn get cartId => text()();
  TextColumn get user => text().references(UserTable, #userId)();
  TextColumn get appDiscount =>
      text().references(DiscountTable, #discountId).nullable()();
  TextColumn get sellerDiscount =>
      text().references(DiscountTable, #discountId).nullable()();
  TextColumn get deliveryDetails => text().map(const DeliveryConverter())();
  RealColumn get deliveryCharge => real()();
  RealColumn get totalPrice => real()();
  RealColumn get subTotal => real()();
  RealColumn get discount => real()();
  RealColumn get grandTotal => real()();

  @override
  Set<Column> get primaryKey => {cartId};
}

@DataClassName('DiscountEntity')
class DiscountTable extends Table {
  TextColumn get discountId => text()();
  TextColumn get code => text()();
  RealColumn get amount => real().nullable()();
  BoolColumn get isPercentage => boolean()();
  RealColumn get maxDiscount => real()();
  DateTimeColumn get expiryDate => dateTime()();
  DateTimeColumn get startDate => dateTime()();
  TextColumn get description => text().nullable()();
  @override
  Set<Column> get primaryKey => {discountId};
}

@DataClassName('PromotionEntity')
class PromotionTable extends Table {
  TextColumn get promotionId => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get image => text()();
  RealColumn get discount => real()();
  TextColumn get code => text()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();
  TextColumn get page => text().nullable()();

  @override
  Set<Column> get primaryKey => {promotionId};
}
