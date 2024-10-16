// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_database.dart';

// ignore_for_file: type=lint
class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneNoMeta =
      const VerificationMeta('phoneNo');
  @override
  late final GeneratedColumn<String> phoneNo = GeneratedColumn<String>(
      'phone_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateJoinedMeta =
      const VerificationMeta('dateJoined');
  @override
  late final GeneratedColumn<DateTime> dateJoined = GeneratedColumn<DateTime>(
      'date_joined', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _pushTokenMeta =
      const VerificationMeta('pushToken');
  @override
  late final GeneratedColumn<String> pushToken = GeneratedColumn<String>(
      'push_token', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [userId, fullName, email, imageUrl, phoneNo, dateJoined, pushToken];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('phone_no')) {
      context.handle(_phoneNoMeta,
          phoneNo.isAcceptableOrUnknown(data['phone_no']!, _phoneNoMeta));
    }
    if (data.containsKey('date_joined')) {
      context.handle(
          _dateJoinedMeta,
          dateJoined.isAcceptableOrUnknown(
              data['date_joined']!, _dateJoinedMeta));
    }
    if (data.containsKey('push_token')) {
      context.handle(_pushTokenMeta,
          pushToken.isAcceptableOrUnknown(data['push_token']!, _pushTokenMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  UserEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserEntity(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      phoneNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_no']),
      dateJoined: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date_joined']),
      pushToken: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}push_token']),
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserEntity extends DataClass implements Insertable<UserEntity> {
  final String userId;
  final String? fullName;
  final String? email;
  final String? imageUrl;
  final String? phoneNo;
  final DateTime? dateJoined;
  final String? pushToken;
  const UserEntity(
      {required this.userId,
      this.fullName,
      this.email,
      this.imageUrl,
      this.phoneNo,
      this.dateJoined,
      this.pushToken});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || phoneNo != null) {
      map['phone_no'] = Variable<String>(phoneNo);
    }
    if (!nullToAbsent || dateJoined != null) {
      map['date_joined'] = Variable<DateTime>(dateJoined);
    }
    if (!nullToAbsent || pushToken != null) {
      map['push_token'] = Variable<String>(pushToken);
    }
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      userId: Value(userId),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      phoneNo: phoneNo == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNo),
      dateJoined: dateJoined == null && nullToAbsent
          ? const Value.absent()
          : Value(dateJoined),
      pushToken: pushToken == null && nullToAbsent
          ? const Value.absent()
          : Value(pushToken),
    );
  }

  factory UserEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserEntity(
      userId: serializer.fromJson<String>(json['userId']),
      fullName: serializer.fromJson<String?>(json['fullName']),
      email: serializer.fromJson<String?>(json['email']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      phoneNo: serializer.fromJson<String?>(json['phoneNo']),
      dateJoined: serializer.fromJson<DateTime?>(json['dateJoined']),
      pushToken: serializer.fromJson<String?>(json['pushToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'fullName': serializer.toJson<String?>(fullName),
      'email': serializer.toJson<String?>(email),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'phoneNo': serializer.toJson<String?>(phoneNo),
      'dateJoined': serializer.toJson<DateTime?>(dateJoined),
      'pushToken': serializer.toJson<String?>(pushToken),
    };
  }

  UserEntity copyWith(
          {String? userId,
          Value<String?> fullName = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<String?> phoneNo = const Value.absent(),
          Value<DateTime?> dateJoined = const Value.absent(),
          Value<String?> pushToken = const Value.absent()}) =>
      UserEntity(
        userId: userId ?? this.userId,
        fullName: fullName.present ? fullName.value : this.fullName,
        email: email.present ? email.value : this.email,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        phoneNo: phoneNo.present ? phoneNo.value : this.phoneNo,
        dateJoined: dateJoined.present ? dateJoined.value : this.dateJoined,
        pushToken: pushToken.present ? pushToken.value : this.pushToken,
      );
  UserEntity copyWithCompanion(UserTableCompanion data) {
    return UserEntity(
      userId: data.userId.present ? data.userId.value : this.userId,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      email: data.email.present ? data.email.value : this.email,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      phoneNo: data.phoneNo.present ? data.phoneNo.value : this.phoneNo,
      dateJoined:
          data.dateJoined.present ? data.dateJoined.value : this.dateJoined,
      pushToken: data.pushToken.present ? data.pushToken.value : this.pushToken,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserEntity(')
          ..write('userId: $userId, ')
          ..write('fullName: $fullName, ')
          ..write('email: $email, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('dateJoined: $dateJoined, ')
          ..write('pushToken: $pushToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      userId, fullName, email, imageUrl, phoneNo, dateJoined, pushToken);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserEntity &&
          other.userId == this.userId &&
          other.fullName == this.fullName &&
          other.email == this.email &&
          other.imageUrl == this.imageUrl &&
          other.phoneNo == this.phoneNo &&
          other.dateJoined == this.dateJoined &&
          other.pushToken == this.pushToken);
}

class UserTableCompanion extends UpdateCompanion<UserEntity> {
  final Value<String> userId;
  final Value<String?> fullName;
  final Value<String?> email;
  final Value<String?> imageUrl;
  final Value<String?> phoneNo;
  final Value<DateTime?> dateJoined;
  final Value<String?> pushToken;
  final Value<int> rowid;
  const UserTableCompanion({
    this.userId = const Value.absent(),
    this.fullName = const Value.absent(),
    this.email = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.dateJoined = const Value.absent(),
    this.pushToken = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserTableCompanion.insert({
    required String userId,
    this.fullName = const Value.absent(),
    this.email = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.phoneNo = const Value.absent(),
    this.dateJoined = const Value.absent(),
    this.pushToken = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : userId = Value(userId);
  static Insertable<UserEntity> custom({
    Expression<String>? userId,
    Expression<String>? fullName,
    Expression<String>? email,
    Expression<String>? imageUrl,
    Expression<String>? phoneNo,
    Expression<DateTime>? dateJoined,
    Expression<String>? pushToken,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (fullName != null) 'full_name': fullName,
      if (email != null) 'email': email,
      if (imageUrl != null) 'image_url': imageUrl,
      if (phoneNo != null) 'phone_no': phoneNo,
      if (dateJoined != null) 'date_joined': dateJoined,
      if (pushToken != null) 'push_token': pushToken,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserTableCompanion copyWith(
      {Value<String>? userId,
      Value<String?>? fullName,
      Value<String?>? email,
      Value<String?>? imageUrl,
      Value<String?>? phoneNo,
      Value<DateTime?>? dateJoined,
      Value<String?>? pushToken,
      Value<int>? rowid}) {
    return UserTableCompanion(
      userId: userId ?? this.userId,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      phoneNo: phoneNo ?? this.phoneNo,
      dateJoined: dateJoined ?? this.dateJoined,
      pushToken: pushToken ?? this.pushToken,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (phoneNo.present) {
      map['phone_no'] = Variable<String>(phoneNo.value);
    }
    if (dateJoined.present) {
      map['date_joined'] = Variable<DateTime>(dateJoined.value);
    }
    if (pushToken.present) {
      map['push_token'] = Variable<String>(pushToken.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('userId: $userId, ')
          ..write('fullName: $fullName, ')
          ..write('email: $email, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('phoneNo: $phoneNo, ')
          ..write('dateJoined: $dateJoined, ')
          ..write('pushToken: $pushToken, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AddressTableTable extends AddressTable
    with TableInfo<$AddressTableTable, AddressEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _addressIdMeta =
      const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<String> addressId = GeneratedColumn<String>(
      'address_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _streetMeta = const VerificationMeta('street');
  @override
  late final GeneratedColumn<String> street = GeneratedColumn<String>(
      'street', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _postalCodeMeta =
      const VerificationMeta('postalCode');
  @override
  late final GeneratedColumn<String> postalCode = GeneratedColumn<String>(
      'postal_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _landmarkMeta =
      const VerificationMeta('landmark');
  @override
  late final GeneratedColumn<String> landmark = GeneratedColumn<String>(
      'landmark', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _apartmentNumberMeta =
      const VerificationMeta('apartmentNumber');
  @override
  late final GeneratedColumn<String> apartmentNumber = GeneratedColumn<String>(
      'apartment_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String> phoneNumber = GeneratedColumn<String>(
      'phone_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        addressId,
        street,
        city,
        state,
        postalCode,
        country,
        landmark,
        apartmentNumber,
        phoneNumber
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'address_table';
  @override
  VerificationContext validateIntegrity(Insertable<AddressEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('address_id')) {
      context.handle(_addressIdMeta,
          addressId.isAcceptableOrUnknown(data['address_id']!, _addressIdMeta));
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    if (data.containsKey('street')) {
      context.handle(_streetMeta,
          street.isAcceptableOrUnknown(data['street']!, _streetMeta));
    } else if (isInserting) {
      context.missing(_streetMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    } else if (isInserting) {
      context.missing(_stateMeta);
    }
    if (data.containsKey('postal_code')) {
      context.handle(
          _postalCodeMeta,
          postalCode.isAcceptableOrUnknown(
              data['postal_code']!, _postalCodeMeta));
    } else if (isInserting) {
      context.missing(_postalCodeMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('landmark')) {
      context.handle(_landmarkMeta,
          landmark.isAcceptableOrUnknown(data['landmark']!, _landmarkMeta));
    }
    if (data.containsKey('apartment_number')) {
      context.handle(
          _apartmentNumberMeta,
          apartmentNumber.isAcceptableOrUnknown(
              data['apartment_number']!, _apartmentNumberMeta));
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {addressId};
  @override
  AddressEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressEntity(
      addressId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address_id'])!,
      street: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}street'])!,
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city'])!,
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state'])!,
      postalCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}postal_code'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      landmark: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}landmark']),
      apartmentNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}apartment_number']),
      phoneNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone_number']),
    );
  }

  @override
  $AddressTableTable createAlias(String alias) {
    return $AddressTableTable(attachedDatabase, alias);
  }
}

class AddressEntity extends DataClass implements Insertable<AddressEntity> {
  final String addressId;
  final String street;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final String? landmark;
  final String? apartmentNumber;
  final String? phoneNumber;
  const AddressEntity(
      {required this.addressId,
      required this.street,
      required this.city,
      required this.state,
      required this.postalCode,
      required this.country,
      this.landmark,
      this.apartmentNumber,
      this.phoneNumber});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['address_id'] = Variable<String>(addressId);
    map['street'] = Variable<String>(street);
    map['city'] = Variable<String>(city);
    map['state'] = Variable<String>(state);
    map['postal_code'] = Variable<String>(postalCode);
    map['country'] = Variable<String>(country);
    if (!nullToAbsent || landmark != null) {
      map['landmark'] = Variable<String>(landmark);
    }
    if (!nullToAbsent || apartmentNumber != null) {
      map['apartment_number'] = Variable<String>(apartmentNumber);
    }
    if (!nullToAbsent || phoneNumber != null) {
      map['phone_number'] = Variable<String>(phoneNumber);
    }
    return map;
  }

  AddressTableCompanion toCompanion(bool nullToAbsent) {
    return AddressTableCompanion(
      addressId: Value(addressId),
      street: Value(street),
      city: Value(city),
      state: Value(state),
      postalCode: Value(postalCode),
      country: Value(country),
      landmark: landmark == null && nullToAbsent
          ? const Value.absent()
          : Value(landmark),
      apartmentNumber: apartmentNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(apartmentNumber),
      phoneNumber: phoneNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(phoneNumber),
    );
  }

  factory AddressEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressEntity(
      addressId: serializer.fromJson<String>(json['addressId']),
      street: serializer.fromJson<String>(json['street']),
      city: serializer.fromJson<String>(json['city']),
      state: serializer.fromJson<String>(json['state']),
      postalCode: serializer.fromJson<String>(json['postalCode']),
      country: serializer.fromJson<String>(json['country']),
      landmark: serializer.fromJson<String?>(json['landmark']),
      apartmentNumber: serializer.fromJson<String?>(json['apartmentNumber']),
      phoneNumber: serializer.fromJson<String?>(json['phoneNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'addressId': serializer.toJson<String>(addressId),
      'street': serializer.toJson<String>(street),
      'city': serializer.toJson<String>(city),
      'state': serializer.toJson<String>(state),
      'postalCode': serializer.toJson<String>(postalCode),
      'country': serializer.toJson<String>(country),
      'landmark': serializer.toJson<String?>(landmark),
      'apartmentNumber': serializer.toJson<String?>(apartmentNumber),
      'phoneNumber': serializer.toJson<String?>(phoneNumber),
    };
  }

  AddressEntity copyWith(
          {String? addressId,
          String? street,
          String? city,
          String? state,
          String? postalCode,
          String? country,
          Value<String?> landmark = const Value.absent(),
          Value<String?> apartmentNumber = const Value.absent(),
          Value<String?> phoneNumber = const Value.absent()}) =>
      AddressEntity(
        addressId: addressId ?? this.addressId,
        street: street ?? this.street,
        city: city ?? this.city,
        state: state ?? this.state,
        postalCode: postalCode ?? this.postalCode,
        country: country ?? this.country,
        landmark: landmark.present ? landmark.value : this.landmark,
        apartmentNumber: apartmentNumber.present
            ? apartmentNumber.value
            : this.apartmentNumber,
        phoneNumber: phoneNumber.present ? phoneNumber.value : this.phoneNumber,
      );
  AddressEntity copyWithCompanion(AddressTableCompanion data) {
    return AddressEntity(
      addressId: data.addressId.present ? data.addressId.value : this.addressId,
      street: data.street.present ? data.street.value : this.street,
      city: data.city.present ? data.city.value : this.city,
      state: data.state.present ? data.state.value : this.state,
      postalCode:
          data.postalCode.present ? data.postalCode.value : this.postalCode,
      country: data.country.present ? data.country.value : this.country,
      landmark: data.landmark.present ? data.landmark.value : this.landmark,
      apartmentNumber: data.apartmentNumber.present
          ? data.apartmentNumber.value
          : this.apartmentNumber,
      phoneNumber:
          data.phoneNumber.present ? data.phoneNumber.value : this.phoneNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AddressEntity(')
          ..write('addressId: $addressId, ')
          ..write('street: $street, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('postalCode: $postalCode, ')
          ..write('country: $country, ')
          ..write('landmark: $landmark, ')
          ..write('apartmentNumber: $apartmentNumber, ')
          ..write('phoneNumber: $phoneNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(addressId, street, city, state, postalCode,
      country, landmark, apartmentNumber, phoneNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressEntity &&
          other.addressId == this.addressId &&
          other.street == this.street &&
          other.city == this.city &&
          other.state == this.state &&
          other.postalCode == this.postalCode &&
          other.country == this.country &&
          other.landmark == this.landmark &&
          other.apartmentNumber == this.apartmentNumber &&
          other.phoneNumber == this.phoneNumber);
}

class AddressTableCompanion extends UpdateCompanion<AddressEntity> {
  final Value<String> addressId;
  final Value<String> street;
  final Value<String> city;
  final Value<String> state;
  final Value<String> postalCode;
  final Value<String> country;
  final Value<String?> landmark;
  final Value<String?> apartmentNumber;
  final Value<String?> phoneNumber;
  final Value<int> rowid;
  const AddressTableCompanion({
    this.addressId = const Value.absent(),
    this.street = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.postalCode = const Value.absent(),
    this.country = const Value.absent(),
    this.landmark = const Value.absent(),
    this.apartmentNumber = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AddressTableCompanion.insert({
    required String addressId,
    required String street,
    required String city,
    required String state,
    required String postalCode,
    required String country,
    this.landmark = const Value.absent(),
    this.apartmentNumber = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : addressId = Value(addressId),
        street = Value(street),
        city = Value(city),
        state = Value(state),
        postalCode = Value(postalCode),
        country = Value(country);
  static Insertable<AddressEntity> custom({
    Expression<String>? addressId,
    Expression<String>? street,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? postalCode,
    Expression<String>? country,
    Expression<String>? landmark,
    Expression<String>? apartmentNumber,
    Expression<String>? phoneNumber,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (addressId != null) 'address_id': addressId,
      if (street != null) 'street': street,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (postalCode != null) 'postal_code': postalCode,
      if (country != null) 'country': country,
      if (landmark != null) 'landmark': landmark,
      if (apartmentNumber != null) 'apartment_number': apartmentNumber,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AddressTableCompanion copyWith(
      {Value<String>? addressId,
      Value<String>? street,
      Value<String>? city,
      Value<String>? state,
      Value<String>? postalCode,
      Value<String>? country,
      Value<String?>? landmark,
      Value<String?>? apartmentNumber,
      Value<String?>? phoneNumber,
      Value<int>? rowid}) {
    return AddressTableCompanion(
      addressId: addressId ?? this.addressId,
      street: street ?? this.street,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
      landmark: landmark ?? this.landmark,
      apartmentNumber: apartmentNumber ?? this.apartmentNumber,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (addressId.present) {
      map['address_id'] = Variable<String>(addressId.value);
    }
    if (street.present) {
      map['street'] = Variable<String>(street.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (postalCode.present) {
      map['postal_code'] = Variable<String>(postalCode.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (landmark.present) {
      map['landmark'] = Variable<String>(landmark.value);
    }
    if (apartmentNumber.present) {
      map['apartment_number'] = Variable<String>(apartmentNumber.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressTableCompanion(')
          ..write('addressId: $addressId, ')
          ..write('street: $street, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('postalCode: $postalCode, ')
          ..write('country: $country, ')
          ..write('landmark: $landmark, ')
          ..write('apartmentNumber: $apartmentNumber, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProductTableTable extends ProductTable
    with TableInfo<$ProductTableTable, ProductEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
      'product_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imagesMeta = const VerificationMeta('images');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>?, String> images =
      GeneratedColumn<String>('images', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<String>?>($ProductTableTable.$converterimagesn);
  static const VerificationMeta _thumbnailMeta =
      const VerificationMeta('thumbnail');
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
      'thumbnail', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumnWithTypeConverter<List<CategoryModel>?, String>
      category = GeneratedColumn<String>('category', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<CategoryModel>?>(
              $ProductTableTable.$convertercategoryn);
  static const VerificationMeta _ratingCountMeta =
      const VerificationMeta('ratingCount');
  @override
  late final GeneratedColumn<int> ratingCount = GeneratedColumn<int>(
      'rating_count', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
      'rating', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _ingredientMeta =
      const VerificationMeta('ingredient');
  @override
  late final GeneratedColumnWithTypeConverter<List<IngredientModel>?, String>
      ingredient = GeneratedColumn<String>('ingredient', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<IngredientModel>?>(
              $ProductTableTable.$converteringredientn);
  static const VerificationMeta _variationsMeta =
      const VerificationMeta('variations');
  @override
  late final GeneratedColumnWithTypeConverter<List<VariationModel>?, String>
      variations = GeneratedColumn<String>('variations', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<VariationModel>?>(
              $ProductTableTable.$convertervariationsn);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taglineMeta =
      const VerificationMeta('tagline');
  @override
  late final GeneratedColumn<String> tagline = GeneratedColumn<String>(
      'tagline', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _salePriceMeta =
      const VerificationMeta('salePrice');
  @override
  late final GeneratedColumn<double> salePrice = GeneratedColumn<double>(
      'sale_price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _promotionMeta =
      const VerificationMeta('promotion');
  @override
  late final GeneratedColumnWithTypeConverter<List<PromotionModel>?, String>
      promotion = GeneratedColumn<String>('promotion', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<PromotionModel>?>(
              $ProductTableTable.$converterpromotionn);
  static const VerificationMeta _isAvailableMeta =
      const VerificationMeta('isAvailable');
  @override
  late final GeneratedColumn<bool> isAvailable = GeneratedColumn<bool>(
      'is_available', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_available" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        productId,
        title,
        images,
        thumbnail,
        category,
        ratingCount,
        rating,
        price,
        ingredient,
        variations,
        description,
        tagline,
        salePrice,
        promotion,
        isAvailable
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_table';
  @override
  VerificationContext validateIntegrity(Insertable<ProductEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    context.handle(_imagesMeta, const VerificationResult.success());
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    context.handle(_categoryMeta, const VerificationResult.success());
    if (data.containsKey('rating_count')) {
      context.handle(
          _ratingCountMeta,
          ratingCount.isAcceptableOrUnknown(
              data['rating_count']!, _ratingCountMeta));
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    context.handle(_ingredientMeta, const VerificationResult.success());
    context.handle(_variationsMeta, const VerificationResult.success());
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('tagline')) {
      context.handle(_taglineMeta,
          tagline.isAcceptableOrUnknown(data['tagline']!, _taglineMeta));
    }
    if (data.containsKey('sale_price')) {
      context.handle(_salePriceMeta,
          salePrice.isAcceptableOrUnknown(data['sale_price']!, _salePriceMeta));
    }
    context.handle(_promotionMeta, const VerificationResult.success());
    if (data.containsKey('is_available')) {
      context.handle(
          _isAvailableMeta,
          isAvailable.isAcceptableOrUnknown(
              data['is_available']!, _isAvailableMeta));
    } else if (isInserting) {
      context.missing(_isAvailableMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {productId};
  @override
  ProductEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductEntity(
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      images: $ProductTableTable.$converterimagesn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}images'])),
      thumbnail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thumbnail'])!,
      category: $ProductTableTable.$convertercategoryn.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])),
      ratingCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}rating_count']),
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}rating'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      ingredient: $ProductTableTable.$converteringredientn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}ingredient'])),
      variations: $ProductTableTable.$convertervariationsn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}variations'])),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      tagline: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tagline']),
      salePrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sale_price']),
      promotion: $ProductTableTable.$converterpromotionn.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}promotion'])),
      isAvailable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_available'])!,
    );
  }

  @override
  $ProductTableTable createAlias(String alias) {
    return $ProductTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterimages =
      const ListOfStringConverter();
  static TypeConverter<List<String>?, String?> $converterimagesn =
      NullAwareTypeConverter.wrap($converterimages);
  static TypeConverter<List<CategoryModel>, String> $convertercategory =
      const ListOfCategoryConverter();
  static TypeConverter<List<CategoryModel>?, String?> $convertercategoryn =
      NullAwareTypeConverter.wrap($convertercategory);
  static TypeConverter<List<IngredientModel>, String> $converteringredient =
      const ListOfIngredientConverter();
  static TypeConverter<List<IngredientModel>?, String?> $converteringredientn =
      NullAwareTypeConverter.wrap($converteringredient);
  static TypeConverter<List<VariationModel>, String> $convertervariations =
      const ListOfVariationConverter();
  static TypeConverter<List<VariationModel>?, String?> $convertervariationsn =
      NullAwareTypeConverter.wrap($convertervariations);
  static TypeConverter<List<PromotionModel>, String> $converterpromotion =
      const ListOfPromotionConverter();
  static TypeConverter<List<PromotionModel>?, String?> $converterpromotionn =
      NullAwareTypeConverter.wrap($converterpromotion);
}

class ProductEntity extends DataClass implements Insertable<ProductEntity> {
  final String productId;
  final String title;
  final List<String>? images;
  final String thumbnail;
  final List<CategoryModel>? category;
  final int? ratingCount;
  final double rating;
  final double price;
  final List<IngredientModel>? ingredient;
  final List<VariationModel>? variations;
  final String? description;
  final String? tagline;
  final double? salePrice;
  final List<PromotionModel>? promotion;
  final bool isAvailable;
  const ProductEntity(
      {required this.productId,
      required this.title,
      this.images,
      required this.thumbnail,
      this.category,
      this.ratingCount,
      required this.rating,
      required this.price,
      this.ingredient,
      this.variations,
      this.description,
      this.tagline,
      this.salePrice,
      this.promotion,
      required this.isAvailable});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['product_id'] = Variable<String>(productId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || images != null) {
      map['images'] =
          Variable<String>($ProductTableTable.$converterimagesn.toSql(images));
    }
    map['thumbnail'] = Variable<String>(thumbnail);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(
          $ProductTableTable.$convertercategoryn.toSql(category));
    }
    if (!nullToAbsent || ratingCount != null) {
      map['rating_count'] = Variable<int>(ratingCount);
    }
    map['rating'] = Variable<double>(rating);
    map['price'] = Variable<double>(price);
    if (!nullToAbsent || ingredient != null) {
      map['ingredient'] = Variable<String>(
          $ProductTableTable.$converteringredientn.toSql(ingredient));
    }
    if (!nullToAbsent || variations != null) {
      map['variations'] = Variable<String>(
          $ProductTableTable.$convertervariationsn.toSql(variations));
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || tagline != null) {
      map['tagline'] = Variable<String>(tagline);
    }
    if (!nullToAbsent || salePrice != null) {
      map['sale_price'] = Variable<double>(salePrice);
    }
    if (!nullToAbsent || promotion != null) {
      map['promotion'] = Variable<String>(
          $ProductTableTable.$converterpromotionn.toSql(promotion));
    }
    map['is_available'] = Variable<bool>(isAvailable);
    return map;
  }

  ProductTableCompanion toCompanion(bool nullToAbsent) {
    return ProductTableCompanion(
      productId: Value(productId),
      title: Value(title),
      images:
          images == null && nullToAbsent ? const Value.absent() : Value(images),
      thumbnail: Value(thumbnail),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      ratingCount: ratingCount == null && nullToAbsent
          ? const Value.absent()
          : Value(ratingCount),
      rating: Value(rating),
      price: Value(price),
      ingredient: ingredient == null && nullToAbsent
          ? const Value.absent()
          : Value(ingredient),
      variations: variations == null && nullToAbsent
          ? const Value.absent()
          : Value(variations),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      tagline: tagline == null && nullToAbsent
          ? const Value.absent()
          : Value(tagline),
      salePrice: salePrice == null && nullToAbsent
          ? const Value.absent()
          : Value(salePrice),
      promotion: promotion == null && nullToAbsent
          ? const Value.absent()
          : Value(promotion),
      isAvailable: Value(isAvailable),
    );
  }

  factory ProductEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductEntity(
      productId: serializer.fromJson<String>(json['productId']),
      title: serializer.fromJson<String>(json['title']),
      images: serializer.fromJson<List<String>?>(json['images']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
      category: serializer.fromJson<List<CategoryModel>?>(json['category']),
      ratingCount: serializer.fromJson<int?>(json['ratingCount']),
      rating: serializer.fromJson<double>(json['rating']),
      price: serializer.fromJson<double>(json['price']),
      ingredient:
          serializer.fromJson<List<IngredientModel>?>(json['ingredient']),
      variations:
          serializer.fromJson<List<VariationModel>?>(json['variations']),
      description: serializer.fromJson<String?>(json['description']),
      tagline: serializer.fromJson<String?>(json['tagline']),
      salePrice: serializer.fromJson<double?>(json['salePrice']),
      promotion: serializer.fromJson<List<PromotionModel>?>(json['promotion']),
      isAvailable: serializer.fromJson<bool>(json['isAvailable']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'productId': serializer.toJson<String>(productId),
      'title': serializer.toJson<String>(title),
      'images': serializer.toJson<List<String>?>(images),
      'thumbnail': serializer.toJson<String>(thumbnail),
      'category': serializer.toJson<List<CategoryModel>?>(category),
      'ratingCount': serializer.toJson<int?>(ratingCount),
      'rating': serializer.toJson<double>(rating),
      'price': serializer.toJson<double>(price),
      'ingredient': serializer.toJson<List<IngredientModel>?>(ingredient),
      'variations': serializer.toJson<List<VariationModel>?>(variations),
      'description': serializer.toJson<String?>(description),
      'tagline': serializer.toJson<String?>(tagline),
      'salePrice': serializer.toJson<double?>(salePrice),
      'promotion': serializer.toJson<List<PromotionModel>?>(promotion),
      'isAvailable': serializer.toJson<bool>(isAvailable),
    };
  }

  ProductEntity copyWith(
          {String? productId,
          String? title,
          Value<List<String>?> images = const Value.absent(),
          String? thumbnail,
          Value<List<CategoryModel>?> category = const Value.absent(),
          Value<int?> ratingCount = const Value.absent(),
          double? rating,
          double? price,
          Value<List<IngredientModel>?> ingredient = const Value.absent(),
          Value<List<VariationModel>?> variations = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> tagline = const Value.absent(),
          Value<double?> salePrice = const Value.absent(),
          Value<List<PromotionModel>?> promotion = const Value.absent(),
          bool? isAvailable}) =>
      ProductEntity(
        productId: productId ?? this.productId,
        title: title ?? this.title,
        images: images.present ? images.value : this.images,
        thumbnail: thumbnail ?? this.thumbnail,
        category: category.present ? category.value : this.category,
        ratingCount: ratingCount.present ? ratingCount.value : this.ratingCount,
        rating: rating ?? this.rating,
        price: price ?? this.price,
        ingredient: ingredient.present ? ingredient.value : this.ingredient,
        variations: variations.present ? variations.value : this.variations,
        description: description.present ? description.value : this.description,
        tagline: tagline.present ? tagline.value : this.tagline,
        salePrice: salePrice.present ? salePrice.value : this.salePrice,
        promotion: promotion.present ? promotion.value : this.promotion,
        isAvailable: isAvailable ?? this.isAvailable,
      );
  ProductEntity copyWithCompanion(ProductTableCompanion data) {
    return ProductEntity(
      productId: data.productId.present ? data.productId.value : this.productId,
      title: data.title.present ? data.title.value : this.title,
      images: data.images.present ? data.images.value : this.images,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
      category: data.category.present ? data.category.value : this.category,
      ratingCount:
          data.ratingCount.present ? data.ratingCount.value : this.ratingCount,
      rating: data.rating.present ? data.rating.value : this.rating,
      price: data.price.present ? data.price.value : this.price,
      ingredient:
          data.ingredient.present ? data.ingredient.value : this.ingredient,
      variations:
          data.variations.present ? data.variations.value : this.variations,
      description:
          data.description.present ? data.description.value : this.description,
      tagline: data.tagline.present ? data.tagline.value : this.tagline,
      salePrice: data.salePrice.present ? data.salePrice.value : this.salePrice,
      promotion: data.promotion.present ? data.promotion.value : this.promotion,
      isAvailable:
          data.isAvailable.present ? data.isAvailable.value : this.isAvailable,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductEntity(')
          ..write('productId: $productId, ')
          ..write('title: $title, ')
          ..write('images: $images, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('category: $category, ')
          ..write('ratingCount: $ratingCount, ')
          ..write('rating: $rating, ')
          ..write('price: $price, ')
          ..write('ingredient: $ingredient, ')
          ..write('variations: $variations, ')
          ..write('description: $description, ')
          ..write('tagline: $tagline, ')
          ..write('salePrice: $salePrice, ')
          ..write('promotion: $promotion, ')
          ..write('isAvailable: $isAvailable')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      productId,
      title,
      images,
      thumbnail,
      category,
      ratingCount,
      rating,
      price,
      ingredient,
      variations,
      description,
      tagline,
      salePrice,
      promotion,
      isAvailable);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductEntity &&
          other.productId == this.productId &&
          other.title == this.title &&
          other.images == this.images &&
          other.thumbnail == this.thumbnail &&
          other.category == this.category &&
          other.ratingCount == this.ratingCount &&
          other.rating == this.rating &&
          other.price == this.price &&
          other.ingredient == this.ingredient &&
          other.variations == this.variations &&
          other.description == this.description &&
          other.tagline == this.tagline &&
          other.salePrice == this.salePrice &&
          other.promotion == this.promotion &&
          other.isAvailable == this.isAvailable);
}

class ProductTableCompanion extends UpdateCompanion<ProductEntity> {
  final Value<String> productId;
  final Value<String> title;
  final Value<List<String>?> images;
  final Value<String> thumbnail;
  final Value<List<CategoryModel>?> category;
  final Value<int?> ratingCount;
  final Value<double> rating;
  final Value<double> price;
  final Value<List<IngredientModel>?> ingredient;
  final Value<List<VariationModel>?> variations;
  final Value<String?> description;
  final Value<String?> tagline;
  final Value<double?> salePrice;
  final Value<List<PromotionModel>?> promotion;
  final Value<bool> isAvailable;
  final Value<int> rowid;
  const ProductTableCompanion({
    this.productId = const Value.absent(),
    this.title = const Value.absent(),
    this.images = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.category = const Value.absent(),
    this.ratingCount = const Value.absent(),
    this.rating = const Value.absent(),
    this.price = const Value.absent(),
    this.ingredient = const Value.absent(),
    this.variations = const Value.absent(),
    this.description = const Value.absent(),
    this.tagline = const Value.absent(),
    this.salePrice = const Value.absent(),
    this.promotion = const Value.absent(),
    this.isAvailable = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProductTableCompanion.insert({
    required String productId,
    required String title,
    this.images = const Value.absent(),
    required String thumbnail,
    this.category = const Value.absent(),
    this.ratingCount = const Value.absent(),
    required double rating,
    required double price,
    this.ingredient = const Value.absent(),
    this.variations = const Value.absent(),
    this.description = const Value.absent(),
    this.tagline = const Value.absent(),
    this.salePrice = const Value.absent(),
    this.promotion = const Value.absent(),
    required bool isAvailable,
    this.rowid = const Value.absent(),
  })  : productId = Value(productId),
        title = Value(title),
        thumbnail = Value(thumbnail),
        rating = Value(rating),
        price = Value(price),
        isAvailable = Value(isAvailable);
  static Insertable<ProductEntity> custom({
    Expression<String>? productId,
    Expression<String>? title,
    Expression<String>? images,
    Expression<String>? thumbnail,
    Expression<String>? category,
    Expression<int>? ratingCount,
    Expression<double>? rating,
    Expression<double>? price,
    Expression<String>? ingredient,
    Expression<String>? variations,
    Expression<String>? description,
    Expression<String>? tagline,
    Expression<double>? salePrice,
    Expression<String>? promotion,
    Expression<bool>? isAvailable,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (productId != null) 'product_id': productId,
      if (title != null) 'title': title,
      if (images != null) 'images': images,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (category != null) 'category': category,
      if (ratingCount != null) 'rating_count': ratingCount,
      if (rating != null) 'rating': rating,
      if (price != null) 'price': price,
      if (ingredient != null) 'ingredient': ingredient,
      if (variations != null) 'variations': variations,
      if (description != null) 'description': description,
      if (tagline != null) 'tagline': tagline,
      if (salePrice != null) 'sale_price': salePrice,
      if (promotion != null) 'promotion': promotion,
      if (isAvailable != null) 'is_available': isAvailable,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProductTableCompanion copyWith(
      {Value<String>? productId,
      Value<String>? title,
      Value<List<String>?>? images,
      Value<String>? thumbnail,
      Value<List<CategoryModel>?>? category,
      Value<int?>? ratingCount,
      Value<double>? rating,
      Value<double>? price,
      Value<List<IngredientModel>?>? ingredient,
      Value<List<VariationModel>?>? variations,
      Value<String?>? description,
      Value<String?>? tagline,
      Value<double?>? salePrice,
      Value<List<PromotionModel>?>? promotion,
      Value<bool>? isAvailable,
      Value<int>? rowid}) {
    return ProductTableCompanion(
      productId: productId ?? this.productId,
      title: title ?? this.title,
      images: images ?? this.images,
      thumbnail: thumbnail ?? this.thumbnail,
      category: category ?? this.category,
      ratingCount: ratingCount ?? this.ratingCount,
      rating: rating ?? this.rating,
      price: price ?? this.price,
      ingredient: ingredient ?? this.ingredient,
      variations: variations ?? this.variations,
      description: description ?? this.description,
      tagline: tagline ?? this.tagline,
      salePrice: salePrice ?? this.salePrice,
      promotion: promotion ?? this.promotion,
      isAvailable: isAvailable ?? this.isAvailable,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (images.present) {
      map['images'] = Variable<String>(
          $ProductTableTable.$converterimagesn.toSql(images.value));
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(
          $ProductTableTable.$convertercategoryn.toSql(category.value));
    }
    if (ratingCount.present) {
      map['rating_count'] = Variable<int>(ratingCount.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (ingredient.present) {
      map['ingredient'] = Variable<String>(
          $ProductTableTable.$converteringredientn.toSql(ingredient.value));
    }
    if (variations.present) {
      map['variations'] = Variable<String>(
          $ProductTableTable.$convertervariationsn.toSql(variations.value));
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (tagline.present) {
      map['tagline'] = Variable<String>(tagline.value);
    }
    if (salePrice.present) {
      map['sale_price'] = Variable<double>(salePrice.value);
    }
    if (promotion.present) {
      map['promotion'] = Variable<String>(
          $ProductTableTable.$converterpromotionn.toSql(promotion.value));
    }
    if (isAvailable.present) {
      map['is_available'] = Variable<bool>(isAvailable.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableCompanion(')
          ..write('productId: $productId, ')
          ..write('title: $title, ')
          ..write('images: $images, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('category: $category, ')
          ..write('ratingCount: $ratingCount, ')
          ..write('rating: $rating, ')
          ..write('price: $price, ')
          ..write('ingredient: $ingredient, ')
          ..write('variations: $variations, ')
          ..write('description: $description, ')
          ..write('tagline: $tagline, ')
          ..write('salePrice: $salePrice, ')
          ..write('promotion: $promotion, ')
          ..write('isAvailable: $isAvailable, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CartProductTableTable extends CartProductTable
    with TableInfo<$CartProductTableTable, CartProductEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartProductTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cartIdMeta = const VerificationMeta('cartId');
  @override
  late final GeneratedColumn<String> cartId = GeneratedColumn<String>(
      'cart_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _isAvailableMeta =
      const VerificationMeta('isAvailable');
  @override
  late final GeneratedColumn<bool> isAvailable = GeneratedColumn<bool>(
      'is_available', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_available" IN (0, 1))'));
  static const VerificationMeta _addedAtMeta =
      const VerificationMeta('addedAt');
  @override
  late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>(
      'added_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _deliveryChargeMeta =
      const VerificationMeta('deliveryCharge');
  @override
  late final GeneratedColumn<double> deliveryCharge = GeneratedColumn<double>(
      'delivery_charge', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _variationMeta =
      const VerificationMeta('variation');
  @override
  late final GeneratedColumnWithTypeConverter<VariationModel, String>
      variation = GeneratedColumn<String>('variation', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<VariationModel>(
              $CartProductTableTable.$convertervariation);
  static const VerificationMeta _productMeta =
      const VerificationMeta('product');
  @override
  late final GeneratedColumn<String> product = GeneratedColumn<String>(
      'product', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES product_table (product_id)'));
  @override
  List<GeneratedColumn> get $columns => [
        cartId,
        quantity,
        isAvailable,
        addedAt,
        updatedAt,
        deliveryCharge,
        totalPrice,
        variation,
        product
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_product_table';
  @override
  VerificationContext validateIntegrity(Insertable<CartProductEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cart_id')) {
      context.handle(_cartIdMeta,
          cartId.isAcceptableOrUnknown(data['cart_id']!, _cartIdMeta));
    } else if (isInserting) {
      context.missing(_cartIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('is_available')) {
      context.handle(
          _isAvailableMeta,
          isAvailable.isAcceptableOrUnknown(
              data['is_available']!, _isAvailableMeta));
    } else if (isInserting) {
      context.missing(_isAvailableMeta);
    }
    if (data.containsKey('added_at')) {
      context.handle(_addedAtMeta,
          addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));
    } else if (isInserting) {
      context.missing(_addedAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('delivery_charge')) {
      context.handle(
          _deliveryChargeMeta,
          deliveryCharge.isAcceptableOrUnknown(
              data['delivery_charge']!, _deliveryChargeMeta));
    } else if (isInserting) {
      context.missing(_deliveryChargeMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    context.handle(_variationMeta, const VerificationResult.success());
    if (data.containsKey('product')) {
      context.handle(_productMeta,
          product.isAcceptableOrUnknown(data['product']!, _productMeta));
    } else if (isInserting) {
      context.missing(_productMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CartProductEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartProductEntity(
      cartId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cart_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
      isAvailable: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_available'])!,
      addedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      deliveryCharge: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}delivery_charge'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
      variation: $CartProductTableTable.$convertervariation.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}variation'])!),
      product: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product'])!,
    );
  }

  @override
  $CartProductTableTable createAlias(String alias) {
    return $CartProductTableTable(attachedDatabase, alias);
  }

  static TypeConverter<VariationModel, String> $convertervariation =
      const VariationConverter();
}

class CartProductEntity extends DataClass
    implements Insertable<CartProductEntity> {
  final String cartId;
  final double quantity;
  final bool isAvailable;
  final DateTime addedAt;
  final DateTime updatedAt;
  final double deliveryCharge;
  final double totalPrice;
  final VariationModel variation;
  final String product;
  const CartProductEntity(
      {required this.cartId,
      required this.quantity,
      required this.isAvailable,
      required this.addedAt,
      required this.updatedAt,
      required this.deliveryCharge,
      required this.totalPrice,
      required this.variation,
      required this.product});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cart_id'] = Variable<String>(cartId);
    map['quantity'] = Variable<double>(quantity);
    map['is_available'] = Variable<bool>(isAvailable);
    map['added_at'] = Variable<DateTime>(addedAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['delivery_charge'] = Variable<double>(deliveryCharge);
    map['total_price'] = Variable<double>(totalPrice);
    {
      map['variation'] = Variable<String>(
          $CartProductTableTable.$convertervariation.toSql(variation));
    }
    map['product'] = Variable<String>(product);
    return map;
  }

  CartProductTableCompanion toCompanion(bool nullToAbsent) {
    return CartProductTableCompanion(
      cartId: Value(cartId),
      quantity: Value(quantity),
      isAvailable: Value(isAvailable),
      addedAt: Value(addedAt),
      updatedAt: Value(updatedAt),
      deliveryCharge: Value(deliveryCharge),
      totalPrice: Value(totalPrice),
      variation: Value(variation),
      product: Value(product),
    );
  }

  factory CartProductEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartProductEntity(
      cartId: serializer.fromJson<String>(json['cartId']),
      quantity: serializer.fromJson<double>(json['quantity']),
      isAvailable: serializer.fromJson<bool>(json['isAvailable']),
      addedAt: serializer.fromJson<DateTime>(json['addedAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deliveryCharge: serializer.fromJson<double>(json['deliveryCharge']),
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
      variation: serializer.fromJson<VariationModel>(json['variation']),
      product: serializer.fromJson<String>(json['product']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cartId': serializer.toJson<String>(cartId),
      'quantity': serializer.toJson<double>(quantity),
      'isAvailable': serializer.toJson<bool>(isAvailable),
      'addedAt': serializer.toJson<DateTime>(addedAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deliveryCharge': serializer.toJson<double>(deliveryCharge),
      'totalPrice': serializer.toJson<double>(totalPrice),
      'variation': serializer.toJson<VariationModel>(variation),
      'product': serializer.toJson<String>(product),
    };
  }

  CartProductEntity copyWith(
          {String? cartId,
          double? quantity,
          bool? isAvailable,
          DateTime? addedAt,
          DateTime? updatedAt,
          double? deliveryCharge,
          double? totalPrice,
          VariationModel? variation,
          String? product}) =>
      CartProductEntity(
        cartId: cartId ?? this.cartId,
        quantity: quantity ?? this.quantity,
        isAvailable: isAvailable ?? this.isAvailable,
        addedAt: addedAt ?? this.addedAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deliveryCharge: deliveryCharge ?? this.deliveryCharge,
        totalPrice: totalPrice ?? this.totalPrice,
        variation: variation ?? this.variation,
        product: product ?? this.product,
      );
  CartProductEntity copyWithCompanion(CartProductTableCompanion data) {
    return CartProductEntity(
      cartId: data.cartId.present ? data.cartId.value : this.cartId,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      isAvailable:
          data.isAvailable.present ? data.isAvailable.value : this.isAvailable,
      addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deliveryCharge: data.deliveryCharge.present
          ? data.deliveryCharge.value
          : this.deliveryCharge,
      totalPrice:
          data.totalPrice.present ? data.totalPrice.value : this.totalPrice,
      variation: data.variation.present ? data.variation.value : this.variation,
      product: data.product.present ? data.product.value : this.product,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CartProductEntity(')
          ..write('cartId: $cartId, ')
          ..write('quantity: $quantity, ')
          ..write('isAvailable: $isAvailable, ')
          ..write('addedAt: $addedAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deliveryCharge: $deliveryCharge, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('variation: $variation, ')
          ..write('product: $product')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cartId, quantity, isAvailable, addedAt,
      updatedAt, deliveryCharge, totalPrice, variation, product);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartProductEntity &&
          other.cartId == this.cartId &&
          other.quantity == this.quantity &&
          other.isAvailable == this.isAvailable &&
          other.addedAt == this.addedAt &&
          other.updatedAt == this.updatedAt &&
          other.deliveryCharge == this.deliveryCharge &&
          other.totalPrice == this.totalPrice &&
          other.variation == this.variation &&
          other.product == this.product);
}

class CartProductTableCompanion extends UpdateCompanion<CartProductEntity> {
  final Value<String> cartId;
  final Value<double> quantity;
  final Value<bool> isAvailable;
  final Value<DateTime> addedAt;
  final Value<DateTime> updatedAt;
  final Value<double> deliveryCharge;
  final Value<double> totalPrice;
  final Value<VariationModel> variation;
  final Value<String> product;
  final Value<int> rowid;
  const CartProductTableCompanion({
    this.cartId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.isAvailable = const Value.absent(),
    this.addedAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deliveryCharge = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.variation = const Value.absent(),
    this.product = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CartProductTableCompanion.insert({
    required String cartId,
    required double quantity,
    required bool isAvailable,
    required DateTime addedAt,
    required DateTime updatedAt,
    required double deliveryCharge,
    required double totalPrice,
    required VariationModel variation,
    required String product,
    this.rowid = const Value.absent(),
  })  : cartId = Value(cartId),
        quantity = Value(quantity),
        isAvailable = Value(isAvailable),
        addedAt = Value(addedAt),
        updatedAt = Value(updatedAt),
        deliveryCharge = Value(deliveryCharge),
        totalPrice = Value(totalPrice),
        variation = Value(variation),
        product = Value(product);
  static Insertable<CartProductEntity> custom({
    Expression<String>? cartId,
    Expression<double>? quantity,
    Expression<bool>? isAvailable,
    Expression<DateTime>? addedAt,
    Expression<DateTime>? updatedAt,
    Expression<double>? deliveryCharge,
    Expression<double>? totalPrice,
    Expression<String>? variation,
    Expression<String>? product,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cartId != null) 'cart_id': cartId,
      if (quantity != null) 'quantity': quantity,
      if (isAvailable != null) 'is_available': isAvailable,
      if (addedAt != null) 'added_at': addedAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deliveryCharge != null) 'delivery_charge': deliveryCharge,
      if (totalPrice != null) 'total_price': totalPrice,
      if (variation != null) 'variation': variation,
      if (product != null) 'product': product,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CartProductTableCompanion copyWith(
      {Value<String>? cartId,
      Value<double>? quantity,
      Value<bool>? isAvailable,
      Value<DateTime>? addedAt,
      Value<DateTime>? updatedAt,
      Value<double>? deliveryCharge,
      Value<double>? totalPrice,
      Value<VariationModel>? variation,
      Value<String>? product,
      Value<int>? rowid}) {
    return CartProductTableCompanion(
      cartId: cartId ?? this.cartId,
      quantity: quantity ?? this.quantity,
      isAvailable: isAvailable ?? this.isAvailable,
      addedAt: addedAt ?? this.addedAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deliveryCharge: deliveryCharge ?? this.deliveryCharge,
      totalPrice: totalPrice ?? this.totalPrice,
      variation: variation ?? this.variation,
      product: product ?? this.product,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cartId.present) {
      map['cart_id'] = Variable<String>(cartId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (isAvailable.present) {
      map['is_available'] = Variable<bool>(isAvailable.value);
    }
    if (addedAt.present) {
      map['added_at'] = Variable<DateTime>(addedAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deliveryCharge.present) {
      map['delivery_charge'] = Variable<double>(deliveryCharge.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (variation.present) {
      map['variation'] = Variable<String>(
          $CartProductTableTable.$convertervariation.toSql(variation.value));
    }
    if (product.present) {
      map['product'] = Variable<String>(product.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartProductTableCompanion(')
          ..write('cartId: $cartId, ')
          ..write('quantity: $quantity, ')
          ..write('isAvailable: $isAvailable, ')
          ..write('addedAt: $addedAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deliveryCharge: $deliveryCharge, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('variation: $variation, ')
          ..write('product: $product, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DiscountTableTable extends DiscountTable
    with TableInfo<$DiscountTableTable, DiscountEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DiscountTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _discountIdMeta =
      const VerificationMeta('discountId');
  @override
  late final GeneratedColumn<String> discountId = GeneratedColumn<String>(
      'discount_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
      'code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _isPercentageMeta =
      const VerificationMeta('isPercentage');
  @override
  late final GeneratedColumn<bool> isPercentage = GeneratedColumn<bool>(
      'is_percentage', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_percentage" IN (0, 1))'));
  static const VerificationMeta _maxDiscountMeta =
      const VerificationMeta('maxDiscount');
  @override
  late final GeneratedColumn<double> maxDiscount = GeneratedColumn<double>(
      'max_discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _expiryDateMeta =
      const VerificationMeta('expiryDate');
  @override
  late final GeneratedColumn<DateTime> expiryDate = GeneratedColumn<DateTime>(
      'expiry_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _startDateMeta =
      const VerificationMeta('startDate');
  @override
  late final GeneratedColumn<DateTime> startDate = GeneratedColumn<DateTime>(
      'start_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        discountId,
        code,
        amount,
        isPercentage,
        maxDiscount,
        expiryDate,
        startDate,
        description
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'discount_table';
  @override
  VerificationContext validateIntegrity(Insertable<DiscountEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('discount_id')) {
      context.handle(
          _discountIdMeta,
          discountId.isAcceptableOrUnknown(
              data['discount_id']!, _discountIdMeta));
    } else if (isInserting) {
      context.missing(_discountIdMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    }
    if (data.containsKey('is_percentage')) {
      context.handle(
          _isPercentageMeta,
          isPercentage.isAcceptableOrUnknown(
              data['is_percentage']!, _isPercentageMeta));
    } else if (isInserting) {
      context.missing(_isPercentageMeta);
    }
    if (data.containsKey('max_discount')) {
      context.handle(
          _maxDiscountMeta,
          maxDiscount.isAcceptableOrUnknown(
              data['max_discount']!, _maxDiscountMeta));
    } else if (isInserting) {
      context.missing(_maxDiscountMeta);
    }
    if (data.containsKey('expiry_date')) {
      context.handle(
          _expiryDateMeta,
          expiryDate.isAcceptableOrUnknown(
              data['expiry_date']!, _expiryDateMeta));
    } else if (isInserting) {
      context.missing(_expiryDateMeta);
    }
    if (data.containsKey('start_date')) {
      context.handle(_startDateMeta,
          startDate.isAcceptableOrUnknown(data['start_date']!, _startDateMeta));
    } else if (isInserting) {
      context.missing(_startDateMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {discountId};
  @override
  DiscountEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DiscountEntity(
      discountId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}discount_id'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}code'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount']),
      isPercentage: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_percentage'])!,
      maxDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}max_discount'])!,
      expiryDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expiry_date'])!,
      startDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_date'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $DiscountTableTable createAlias(String alias) {
    return $DiscountTableTable(attachedDatabase, alias);
  }
}

class DiscountEntity extends DataClass implements Insertable<DiscountEntity> {
  final String discountId;
  final String code;
  final double? amount;
  final bool isPercentage;
  final double maxDiscount;
  final DateTime expiryDate;
  final DateTime startDate;
  final String? description;
  const DiscountEntity(
      {required this.discountId,
      required this.code,
      this.amount,
      required this.isPercentage,
      required this.maxDiscount,
      required this.expiryDate,
      required this.startDate,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['discount_id'] = Variable<String>(discountId);
    map['code'] = Variable<String>(code);
    if (!nullToAbsent || amount != null) {
      map['amount'] = Variable<double>(amount);
    }
    map['is_percentage'] = Variable<bool>(isPercentage);
    map['max_discount'] = Variable<double>(maxDiscount);
    map['expiry_date'] = Variable<DateTime>(expiryDate);
    map['start_date'] = Variable<DateTime>(startDate);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  DiscountTableCompanion toCompanion(bool nullToAbsent) {
    return DiscountTableCompanion(
      discountId: Value(discountId),
      code: Value(code),
      amount:
          amount == null && nullToAbsent ? const Value.absent() : Value(amount),
      isPercentage: Value(isPercentage),
      maxDiscount: Value(maxDiscount),
      expiryDate: Value(expiryDate),
      startDate: Value(startDate),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory DiscountEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiscountEntity(
      discountId: serializer.fromJson<String>(json['discountId']),
      code: serializer.fromJson<String>(json['code']),
      amount: serializer.fromJson<double?>(json['amount']),
      isPercentage: serializer.fromJson<bool>(json['isPercentage']),
      maxDiscount: serializer.fromJson<double>(json['maxDiscount']),
      expiryDate: serializer.fromJson<DateTime>(json['expiryDate']),
      startDate: serializer.fromJson<DateTime>(json['startDate']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'discountId': serializer.toJson<String>(discountId),
      'code': serializer.toJson<String>(code),
      'amount': serializer.toJson<double?>(amount),
      'isPercentage': serializer.toJson<bool>(isPercentage),
      'maxDiscount': serializer.toJson<double>(maxDiscount),
      'expiryDate': serializer.toJson<DateTime>(expiryDate),
      'startDate': serializer.toJson<DateTime>(startDate),
      'description': serializer.toJson<String?>(description),
    };
  }

  DiscountEntity copyWith(
          {String? discountId,
          String? code,
          Value<double?> amount = const Value.absent(),
          bool? isPercentage,
          double? maxDiscount,
          DateTime? expiryDate,
          DateTime? startDate,
          Value<String?> description = const Value.absent()}) =>
      DiscountEntity(
        discountId: discountId ?? this.discountId,
        code: code ?? this.code,
        amount: amount.present ? amount.value : this.amount,
        isPercentage: isPercentage ?? this.isPercentage,
        maxDiscount: maxDiscount ?? this.maxDiscount,
        expiryDate: expiryDate ?? this.expiryDate,
        startDate: startDate ?? this.startDate,
        description: description.present ? description.value : this.description,
      );
  DiscountEntity copyWithCompanion(DiscountTableCompanion data) {
    return DiscountEntity(
      discountId:
          data.discountId.present ? data.discountId.value : this.discountId,
      code: data.code.present ? data.code.value : this.code,
      amount: data.amount.present ? data.amount.value : this.amount,
      isPercentage: data.isPercentage.present
          ? data.isPercentage.value
          : this.isPercentage,
      maxDiscount:
          data.maxDiscount.present ? data.maxDiscount.value : this.maxDiscount,
      expiryDate:
          data.expiryDate.present ? data.expiryDate.value : this.expiryDate,
      startDate: data.startDate.present ? data.startDate.value : this.startDate,
      description:
          data.description.present ? data.description.value : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DiscountEntity(')
          ..write('discountId: $discountId, ')
          ..write('code: $code, ')
          ..write('amount: $amount, ')
          ..write('isPercentage: $isPercentage, ')
          ..write('maxDiscount: $maxDiscount, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('startDate: $startDate, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(discountId, code, amount, isPercentage,
      maxDiscount, expiryDate, startDate, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiscountEntity &&
          other.discountId == this.discountId &&
          other.code == this.code &&
          other.amount == this.amount &&
          other.isPercentage == this.isPercentage &&
          other.maxDiscount == this.maxDiscount &&
          other.expiryDate == this.expiryDate &&
          other.startDate == this.startDate &&
          other.description == this.description);
}

class DiscountTableCompanion extends UpdateCompanion<DiscountEntity> {
  final Value<String> discountId;
  final Value<String> code;
  final Value<double?> amount;
  final Value<bool> isPercentage;
  final Value<double> maxDiscount;
  final Value<DateTime> expiryDate;
  final Value<DateTime> startDate;
  final Value<String?> description;
  final Value<int> rowid;
  const DiscountTableCompanion({
    this.discountId = const Value.absent(),
    this.code = const Value.absent(),
    this.amount = const Value.absent(),
    this.isPercentage = const Value.absent(),
    this.maxDiscount = const Value.absent(),
    this.expiryDate = const Value.absent(),
    this.startDate = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DiscountTableCompanion.insert({
    required String discountId,
    required String code,
    this.amount = const Value.absent(),
    required bool isPercentage,
    required double maxDiscount,
    required DateTime expiryDate,
    required DateTime startDate,
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : discountId = Value(discountId),
        code = Value(code),
        isPercentage = Value(isPercentage),
        maxDiscount = Value(maxDiscount),
        expiryDate = Value(expiryDate),
        startDate = Value(startDate);
  static Insertable<DiscountEntity> custom({
    Expression<String>? discountId,
    Expression<String>? code,
    Expression<double>? amount,
    Expression<bool>? isPercentage,
    Expression<double>? maxDiscount,
    Expression<DateTime>? expiryDate,
    Expression<DateTime>? startDate,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (discountId != null) 'discount_id': discountId,
      if (code != null) 'code': code,
      if (amount != null) 'amount': amount,
      if (isPercentage != null) 'is_percentage': isPercentage,
      if (maxDiscount != null) 'max_discount': maxDiscount,
      if (expiryDate != null) 'expiry_date': expiryDate,
      if (startDate != null) 'start_date': startDate,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DiscountTableCompanion copyWith(
      {Value<String>? discountId,
      Value<String>? code,
      Value<double?>? amount,
      Value<bool>? isPercentage,
      Value<double>? maxDiscount,
      Value<DateTime>? expiryDate,
      Value<DateTime>? startDate,
      Value<String?>? description,
      Value<int>? rowid}) {
    return DiscountTableCompanion(
      discountId: discountId ?? this.discountId,
      code: code ?? this.code,
      amount: amount ?? this.amount,
      isPercentage: isPercentage ?? this.isPercentage,
      maxDiscount: maxDiscount ?? this.maxDiscount,
      expiryDate: expiryDate ?? this.expiryDate,
      startDate: startDate ?? this.startDate,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (discountId.present) {
      map['discount_id'] = Variable<String>(discountId.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (isPercentage.present) {
      map['is_percentage'] = Variable<bool>(isPercentage.value);
    }
    if (maxDiscount.present) {
      map['max_discount'] = Variable<double>(maxDiscount.value);
    }
    if (expiryDate.present) {
      map['expiry_date'] = Variable<DateTime>(expiryDate.value);
    }
    if (startDate.present) {
      map['start_date'] = Variable<DateTime>(startDate.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiscountTableCompanion(')
          ..write('discountId: $discountId, ')
          ..write('code: $code, ')
          ..write('amount: $amount, ')
          ..write('isPercentage: $isPercentage, ')
          ..write('maxDiscount: $maxDiscount, ')
          ..write('expiryDate: $expiryDate, ')
          ..write('startDate: $startDate, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CartTableTable extends CartTable
    with TableInfo<$CartTableTable, CartEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cartIdMeta = const VerificationMeta('cartId');
  @override
  late final GeneratedColumn<String> cartId = GeneratedColumn<String>(
      'cart_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES user_table (user_id)'));
  static const VerificationMeta _appDiscountMeta =
      const VerificationMeta('appDiscount');
  @override
  late final GeneratedColumn<String> appDiscount = GeneratedColumn<String>(
      'app_discount', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES discount_table (discount_id)'));
  static const VerificationMeta _sellerDiscountMeta =
      const VerificationMeta('sellerDiscount');
  @override
  late final GeneratedColumn<String> sellerDiscount = GeneratedColumn<String>(
      'seller_discount', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES discount_table (discount_id)'));
  static const VerificationMeta _deliveryDetailsMeta =
      const VerificationMeta('deliveryDetails');
  @override
  late final GeneratedColumnWithTypeConverter<DeliveryModel, String>
      deliveryDetails = GeneratedColumn<String>(
              'delivery_details', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<DeliveryModel>(
              $CartTableTable.$converterdeliveryDetails);
  static const VerificationMeta _deliveryChargeMeta =
      const VerificationMeta('deliveryCharge');
  @override
  late final GeneratedColumn<double> deliveryCharge = GeneratedColumn<double>(
      'delivery_charge', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _subTotalMeta =
      const VerificationMeta('subTotal');
  @override
  late final GeneratedColumn<double> subTotal = GeneratedColumn<double>(
      'sub_total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _grandTotalMeta =
      const VerificationMeta('grandTotal');
  @override
  late final GeneratedColumn<double> grandTotal = GeneratedColumn<double>(
      'grand_total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        cartId,
        user,
        appDiscount,
        sellerDiscount,
        deliveryDetails,
        deliveryCharge,
        totalPrice,
        subTotal,
        discount,
        grandTotal
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_table';
  @override
  VerificationContext validateIntegrity(Insertable<CartEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cart_id')) {
      context.handle(_cartIdMeta,
          cartId.isAcceptableOrUnknown(data['cart_id']!, _cartIdMeta));
    } else if (isInserting) {
      context.missing(_cartIdMeta);
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    } else if (isInserting) {
      context.missing(_userMeta);
    }
    if (data.containsKey('app_discount')) {
      context.handle(
          _appDiscountMeta,
          appDiscount.isAcceptableOrUnknown(
              data['app_discount']!, _appDiscountMeta));
    }
    if (data.containsKey('seller_discount')) {
      context.handle(
          _sellerDiscountMeta,
          sellerDiscount.isAcceptableOrUnknown(
              data['seller_discount']!, _sellerDiscountMeta));
    }
    context.handle(_deliveryDetailsMeta, const VerificationResult.success());
    if (data.containsKey('delivery_charge')) {
      context.handle(
          _deliveryChargeMeta,
          deliveryCharge.isAcceptableOrUnknown(
              data['delivery_charge']!, _deliveryChargeMeta));
    } else if (isInserting) {
      context.missing(_deliveryChargeMeta);
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    } else if (isInserting) {
      context.missing(_totalPriceMeta);
    }
    if (data.containsKey('sub_total')) {
      context.handle(_subTotalMeta,
          subTotal.isAcceptableOrUnknown(data['sub_total']!, _subTotalMeta));
    } else if (isInserting) {
      context.missing(_subTotalMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('grand_total')) {
      context.handle(
          _grandTotalMeta,
          grandTotal.isAcceptableOrUnknown(
              data['grand_total']!, _grandTotalMeta));
    } else if (isInserting) {
      context.missing(_grandTotalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cartId};
  @override
  CartEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartEntity(
      cartId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cart_id'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user'])!,
      appDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}app_discount']),
      sellerDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}seller_discount']),
      deliveryDetails: $CartTableTable.$converterdeliveryDetails.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}delivery_details'])!),
      deliveryCharge: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}delivery_charge'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
      subTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}sub_total'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      grandTotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}grand_total'])!,
    );
  }

  @override
  $CartTableTable createAlias(String alias) {
    return $CartTableTable(attachedDatabase, alias);
  }

  static TypeConverter<DeliveryModel, String> $converterdeliveryDetails =
      const DeliveryConverter();
}

class CartEntity extends DataClass implements Insertable<CartEntity> {
  final String cartId;
  final String user;
  final String? appDiscount;
  final String? sellerDiscount;
  final DeliveryModel deliveryDetails;
  final double deliveryCharge;
  final double totalPrice;
  final double subTotal;
  final double discount;
  final double grandTotal;
  const CartEntity(
      {required this.cartId,
      required this.user,
      this.appDiscount,
      this.sellerDiscount,
      required this.deliveryDetails,
      required this.deliveryCharge,
      required this.totalPrice,
      required this.subTotal,
      required this.discount,
      required this.grandTotal});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cart_id'] = Variable<String>(cartId);
    map['user'] = Variable<String>(user);
    if (!nullToAbsent || appDiscount != null) {
      map['app_discount'] = Variable<String>(appDiscount);
    }
    if (!nullToAbsent || sellerDiscount != null) {
      map['seller_discount'] = Variable<String>(sellerDiscount);
    }
    {
      map['delivery_details'] = Variable<String>(
          $CartTableTable.$converterdeliveryDetails.toSql(deliveryDetails));
    }
    map['delivery_charge'] = Variable<double>(deliveryCharge);
    map['total_price'] = Variable<double>(totalPrice);
    map['sub_total'] = Variable<double>(subTotal);
    map['discount'] = Variable<double>(discount);
    map['grand_total'] = Variable<double>(grandTotal);
    return map;
  }

  CartTableCompanion toCompanion(bool nullToAbsent) {
    return CartTableCompanion(
      cartId: Value(cartId),
      user: Value(user),
      appDiscount: appDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(appDiscount),
      sellerDiscount: sellerDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(sellerDiscount),
      deliveryDetails: Value(deliveryDetails),
      deliveryCharge: Value(deliveryCharge),
      totalPrice: Value(totalPrice),
      subTotal: Value(subTotal),
      discount: Value(discount),
      grandTotal: Value(grandTotal),
    );
  }

  factory CartEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartEntity(
      cartId: serializer.fromJson<String>(json['cartId']),
      user: serializer.fromJson<String>(json['user']),
      appDiscount: serializer.fromJson<String?>(json['appDiscount']),
      sellerDiscount: serializer.fromJson<String?>(json['sellerDiscount']),
      deliveryDetails:
          serializer.fromJson<DeliveryModel>(json['deliveryDetails']),
      deliveryCharge: serializer.fromJson<double>(json['deliveryCharge']),
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
      subTotal: serializer.fromJson<double>(json['subTotal']),
      discount: serializer.fromJson<double>(json['discount']),
      grandTotal: serializer.fromJson<double>(json['grandTotal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cartId': serializer.toJson<String>(cartId),
      'user': serializer.toJson<String>(user),
      'appDiscount': serializer.toJson<String?>(appDiscount),
      'sellerDiscount': serializer.toJson<String?>(sellerDiscount),
      'deliveryDetails': serializer.toJson<DeliveryModel>(deliveryDetails),
      'deliveryCharge': serializer.toJson<double>(deliveryCharge),
      'totalPrice': serializer.toJson<double>(totalPrice),
      'subTotal': serializer.toJson<double>(subTotal),
      'discount': serializer.toJson<double>(discount),
      'grandTotal': serializer.toJson<double>(grandTotal),
    };
  }

  CartEntity copyWith(
          {String? cartId,
          String? user,
          Value<String?> appDiscount = const Value.absent(),
          Value<String?> sellerDiscount = const Value.absent(),
          DeliveryModel? deliveryDetails,
          double? deliveryCharge,
          double? totalPrice,
          double? subTotal,
          double? discount,
          double? grandTotal}) =>
      CartEntity(
        cartId: cartId ?? this.cartId,
        user: user ?? this.user,
        appDiscount: appDiscount.present ? appDiscount.value : this.appDiscount,
        sellerDiscount:
            sellerDiscount.present ? sellerDiscount.value : this.sellerDiscount,
        deliveryDetails: deliveryDetails ?? this.deliveryDetails,
        deliveryCharge: deliveryCharge ?? this.deliveryCharge,
        totalPrice: totalPrice ?? this.totalPrice,
        subTotal: subTotal ?? this.subTotal,
        discount: discount ?? this.discount,
        grandTotal: grandTotal ?? this.grandTotal,
      );
  CartEntity copyWithCompanion(CartTableCompanion data) {
    return CartEntity(
      cartId: data.cartId.present ? data.cartId.value : this.cartId,
      user: data.user.present ? data.user.value : this.user,
      appDiscount:
          data.appDiscount.present ? data.appDiscount.value : this.appDiscount,
      sellerDiscount: data.sellerDiscount.present
          ? data.sellerDiscount.value
          : this.sellerDiscount,
      deliveryDetails: data.deliveryDetails.present
          ? data.deliveryDetails.value
          : this.deliveryDetails,
      deliveryCharge: data.deliveryCharge.present
          ? data.deliveryCharge.value
          : this.deliveryCharge,
      totalPrice:
          data.totalPrice.present ? data.totalPrice.value : this.totalPrice,
      subTotal: data.subTotal.present ? data.subTotal.value : this.subTotal,
      discount: data.discount.present ? data.discount.value : this.discount,
      grandTotal:
          data.grandTotal.present ? data.grandTotal.value : this.grandTotal,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CartEntity(')
          ..write('cartId: $cartId, ')
          ..write('user: $user, ')
          ..write('appDiscount: $appDiscount, ')
          ..write('sellerDiscount: $sellerDiscount, ')
          ..write('deliveryDetails: $deliveryDetails, ')
          ..write('deliveryCharge: $deliveryCharge, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('subTotal: $subTotal, ')
          ..write('discount: $discount, ')
          ..write('grandTotal: $grandTotal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      cartId,
      user,
      appDiscount,
      sellerDiscount,
      deliveryDetails,
      deliveryCharge,
      totalPrice,
      subTotal,
      discount,
      grandTotal);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartEntity &&
          other.cartId == this.cartId &&
          other.user == this.user &&
          other.appDiscount == this.appDiscount &&
          other.sellerDiscount == this.sellerDiscount &&
          other.deliveryDetails == this.deliveryDetails &&
          other.deliveryCharge == this.deliveryCharge &&
          other.totalPrice == this.totalPrice &&
          other.subTotal == this.subTotal &&
          other.discount == this.discount &&
          other.grandTotal == this.grandTotal);
}

class CartTableCompanion extends UpdateCompanion<CartEntity> {
  final Value<String> cartId;
  final Value<String> user;
  final Value<String?> appDiscount;
  final Value<String?> sellerDiscount;
  final Value<DeliveryModel> deliveryDetails;
  final Value<double> deliveryCharge;
  final Value<double> totalPrice;
  final Value<double> subTotal;
  final Value<double> discount;
  final Value<double> grandTotal;
  final Value<int> rowid;
  const CartTableCompanion({
    this.cartId = const Value.absent(),
    this.user = const Value.absent(),
    this.appDiscount = const Value.absent(),
    this.sellerDiscount = const Value.absent(),
    this.deliveryDetails = const Value.absent(),
    this.deliveryCharge = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.subTotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.grandTotal = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CartTableCompanion.insert({
    required String cartId,
    required String user,
    this.appDiscount = const Value.absent(),
    this.sellerDiscount = const Value.absent(),
    required DeliveryModel deliveryDetails,
    required double deliveryCharge,
    required double totalPrice,
    required double subTotal,
    required double discount,
    required double grandTotal,
    this.rowid = const Value.absent(),
  })  : cartId = Value(cartId),
        user = Value(user),
        deliveryDetails = Value(deliveryDetails),
        deliveryCharge = Value(deliveryCharge),
        totalPrice = Value(totalPrice),
        subTotal = Value(subTotal),
        discount = Value(discount),
        grandTotal = Value(grandTotal);
  static Insertable<CartEntity> custom({
    Expression<String>? cartId,
    Expression<String>? user,
    Expression<String>? appDiscount,
    Expression<String>? sellerDiscount,
    Expression<String>? deliveryDetails,
    Expression<double>? deliveryCharge,
    Expression<double>? totalPrice,
    Expression<double>? subTotal,
    Expression<double>? discount,
    Expression<double>? grandTotal,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cartId != null) 'cart_id': cartId,
      if (user != null) 'user': user,
      if (appDiscount != null) 'app_discount': appDiscount,
      if (sellerDiscount != null) 'seller_discount': sellerDiscount,
      if (deliveryDetails != null) 'delivery_details': deliveryDetails,
      if (deliveryCharge != null) 'delivery_charge': deliveryCharge,
      if (totalPrice != null) 'total_price': totalPrice,
      if (subTotal != null) 'sub_total': subTotal,
      if (discount != null) 'discount': discount,
      if (grandTotal != null) 'grand_total': grandTotal,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CartTableCompanion copyWith(
      {Value<String>? cartId,
      Value<String>? user,
      Value<String?>? appDiscount,
      Value<String?>? sellerDiscount,
      Value<DeliveryModel>? deliveryDetails,
      Value<double>? deliveryCharge,
      Value<double>? totalPrice,
      Value<double>? subTotal,
      Value<double>? discount,
      Value<double>? grandTotal,
      Value<int>? rowid}) {
    return CartTableCompanion(
      cartId: cartId ?? this.cartId,
      user: user ?? this.user,
      appDiscount: appDiscount ?? this.appDiscount,
      sellerDiscount: sellerDiscount ?? this.sellerDiscount,
      deliveryDetails: deliveryDetails ?? this.deliveryDetails,
      deliveryCharge: deliveryCharge ?? this.deliveryCharge,
      totalPrice: totalPrice ?? this.totalPrice,
      subTotal: subTotal ?? this.subTotal,
      discount: discount ?? this.discount,
      grandTotal: grandTotal ?? this.grandTotal,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cartId.present) {
      map['cart_id'] = Variable<String>(cartId.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (appDiscount.present) {
      map['app_discount'] = Variable<String>(appDiscount.value);
    }
    if (sellerDiscount.present) {
      map['seller_discount'] = Variable<String>(sellerDiscount.value);
    }
    if (deliveryDetails.present) {
      map['delivery_details'] = Variable<String>($CartTableTable
          .$converterdeliveryDetails
          .toSql(deliveryDetails.value));
    }
    if (deliveryCharge.present) {
      map['delivery_charge'] = Variable<double>(deliveryCharge.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (subTotal.present) {
      map['sub_total'] = Variable<double>(subTotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (grandTotal.present) {
      map['grand_total'] = Variable<double>(grandTotal.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartTableCompanion(')
          ..write('cartId: $cartId, ')
          ..write('user: $user, ')
          ..write('appDiscount: $appDiscount, ')
          ..write('sellerDiscount: $sellerDiscount, ')
          ..write('deliveryDetails: $deliveryDetails, ')
          ..write('deliveryCharge: $deliveryCharge, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('subTotal: $subTotal, ')
          ..write('discount: $discount, ')
          ..write('grandTotal: $grandTotal, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $PreferenceTableTable extends PreferenceTable
    with TableInfo<$PreferenceTableTable, SettingEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PreferenceTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
      'key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'value', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'preference_table';
  @override
  VerificationContext validateIntegrity(Insertable<SettingEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingEntity(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $PreferenceTableTable createAlias(String alias) {
    return $PreferenceTableTable(attachedDatabase, alias);
  }
}

class SettingEntity extends DataClass implements Insertable<SettingEntity> {
  final String key;
  final String value;
  const SettingEntity({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  PreferenceTableCompanion toCompanion(bool nullToAbsent) {
    return PreferenceTableCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory SettingEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingEntity(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingEntity copyWith({String? key, String? value}) => SettingEntity(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  SettingEntity copyWithCompanion(PreferenceTableCompanion data) {
    return SettingEntity(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingEntity(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingEntity &&
          other.key == this.key &&
          other.value == this.value);
}

class PreferenceTableCompanion extends UpdateCompanion<SettingEntity> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const PreferenceTableCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  PreferenceTableCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<SettingEntity> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  PreferenceTableCompanion copyWith(
      {Value<String>? key, Value<String>? value, Value<int>? rowid}) {
    return PreferenceTableCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PreferenceTableCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderTableTable extends OrderTable
    with TableInfo<$OrderTableTable, OrderEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
      'order_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productsMeta =
      const VerificationMeta('products');
  @override
  late final GeneratedColumnWithTypeConverter<List<CartProductModel>, String>
      products = GeneratedColumn<String>('products', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<CartProductModel>>(
              $OrderTableTable.$converterproducts);
  static const VerificationMeta _totalAmountMeta =
      const VerificationMeta('totalAmount');
  @override
  late final GeneratedColumn<double> totalAmount = GeneratedColumn<double>(
      'total_amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _deliveryDetailsMeta =
      const VerificationMeta('deliveryDetails');
  @override
  late final GeneratedColumnWithTypeConverter<DeliveryModel, String>
      deliveryDetails = GeneratedColumn<String>(
              'delivery_details', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<DeliveryModel>(
              $OrderTableTable.$converterdeliveryDetails);
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumnWithTypeConverter<OrderStatus, String> status =
      GeneratedColumn<String>('status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<OrderStatus>($OrderTableTable.$converterstatus);
  static const VerificationMeta _orderTimeMeta =
      const VerificationMeta('orderTime');
  @override
  late final GeneratedColumn<DateTime> orderTime = GeneratedColumn<DateTime>(
      'order_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _estimatedDeliveryTimeMeta =
      const VerificationMeta('estimatedDeliveryTime');
  @override
  late final GeneratedColumn<DateTime> estimatedDeliveryTime =
      GeneratedColumn<DateTime>('estimated_delivery_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        orderId,
        userId,
        products,
        totalAmount,
        deliveryDetails,
        status,
        orderTime,
        updatedAt,
        estimatedDeliveryTime
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_table';
  @override
  VerificationContext validateIntegrity(Insertable<OrderEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    context.handle(_productsMeta, const VerificationResult.success());
    if (data.containsKey('total_amount')) {
      context.handle(
          _totalAmountMeta,
          totalAmount.isAcceptableOrUnknown(
              data['total_amount']!, _totalAmountMeta));
    } else if (isInserting) {
      context.missing(_totalAmountMeta);
    }
    context.handle(_deliveryDetailsMeta, const VerificationResult.success());
    context.handle(_statusMeta, const VerificationResult.success());
    if (data.containsKey('order_time')) {
      context.handle(_orderTimeMeta,
          orderTime.isAcceptableOrUnknown(data['order_time']!, _orderTimeMeta));
    } else if (isInserting) {
      context.missing(_orderTimeMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('estimated_delivery_time')) {
      context.handle(
          _estimatedDeliveryTimeMeta,
          estimatedDeliveryTime.isAcceptableOrUnknown(
              data['estimated_delivery_time']!, _estimatedDeliveryTimeMeta));
    } else if (isInserting) {
      context.missing(_estimatedDeliveryTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orderId};
  @override
  OrderEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderEntity(
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      products: $OrderTableTable.$converterproducts.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}products'])!),
      totalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_amount'])!,
      deliveryDetails: $OrderTableTable.$converterdeliveryDetails.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}delivery_details'])!),
      status: $OrderTableTable.$converterstatus.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!),
      orderTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}order_time'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
      estimatedDeliveryTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}estimated_delivery_time'])!,
    );
  }

  @override
  $OrderTableTable createAlias(String alias) {
    return $OrderTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<CartProductModel>, String> $converterproducts =
      const ListOfCartProductConverter();
  static TypeConverter<DeliveryModel, String> $converterdeliveryDetails =
      const DeliveryConverter();
  static JsonTypeConverter2<OrderStatus, String, String> $converterstatus =
      const EnumNameConverter(OrderStatus.values);
}

class OrderEntity extends DataClass implements Insertable<OrderEntity> {
  final String orderId;
  final String userId;
  final List<CartProductModel> products;
  final double totalAmount;
  final DeliveryModel deliveryDetails;
  final OrderStatus status;
  final DateTime orderTime;
  final DateTime updatedAt;
  final DateTime estimatedDeliveryTime;
  const OrderEntity(
      {required this.orderId,
      required this.userId,
      required this.products,
      required this.totalAmount,
      required this.deliveryDetails,
      required this.status,
      required this.orderTime,
      required this.updatedAt,
      required this.estimatedDeliveryTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['order_id'] = Variable<String>(orderId);
    map['user_id'] = Variable<String>(userId);
    {
      map['products'] =
          Variable<String>($OrderTableTable.$converterproducts.toSql(products));
    }
    map['total_amount'] = Variable<double>(totalAmount);
    {
      map['delivery_details'] = Variable<String>(
          $OrderTableTable.$converterdeliveryDetails.toSql(deliveryDetails));
    }
    {
      map['status'] =
          Variable<String>($OrderTableTable.$converterstatus.toSql(status));
    }
    map['order_time'] = Variable<DateTime>(orderTime);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['estimated_delivery_time'] = Variable<DateTime>(estimatedDeliveryTime);
    return map;
  }

  OrderTableCompanion toCompanion(bool nullToAbsent) {
    return OrderTableCompanion(
      orderId: Value(orderId),
      userId: Value(userId),
      products: Value(products),
      totalAmount: Value(totalAmount),
      deliveryDetails: Value(deliveryDetails),
      status: Value(status),
      orderTime: Value(orderTime),
      updatedAt: Value(updatedAt),
      estimatedDeliveryTime: Value(estimatedDeliveryTime),
    );
  }

  factory OrderEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderEntity(
      orderId: serializer.fromJson<String>(json['orderId']),
      userId: serializer.fromJson<String>(json['userId']),
      products: serializer.fromJson<List<CartProductModel>>(json['products']),
      totalAmount: serializer.fromJson<double>(json['totalAmount']),
      deliveryDetails:
          serializer.fromJson<DeliveryModel>(json['deliveryDetails']),
      status: $OrderTableTable.$converterstatus
          .fromJson(serializer.fromJson<String>(json['status'])),
      orderTime: serializer.fromJson<DateTime>(json['orderTime']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      estimatedDeliveryTime:
          serializer.fromJson<DateTime>(json['estimatedDeliveryTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orderId': serializer.toJson<String>(orderId),
      'userId': serializer.toJson<String>(userId),
      'products': serializer.toJson<List<CartProductModel>>(products),
      'totalAmount': serializer.toJson<double>(totalAmount),
      'deliveryDetails': serializer.toJson<DeliveryModel>(deliveryDetails),
      'status': serializer
          .toJson<String>($OrderTableTable.$converterstatus.toJson(status)),
      'orderTime': serializer.toJson<DateTime>(orderTime),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'estimatedDeliveryTime':
          serializer.toJson<DateTime>(estimatedDeliveryTime),
    };
  }

  OrderEntity copyWith(
          {String? orderId,
          String? userId,
          List<CartProductModel>? products,
          double? totalAmount,
          DeliveryModel? deliveryDetails,
          OrderStatus? status,
          DateTime? orderTime,
          DateTime? updatedAt,
          DateTime? estimatedDeliveryTime}) =>
      OrderEntity(
        orderId: orderId ?? this.orderId,
        userId: userId ?? this.userId,
        products: products ?? this.products,
        totalAmount: totalAmount ?? this.totalAmount,
        deliveryDetails: deliveryDetails ?? this.deliveryDetails,
        status: status ?? this.status,
        orderTime: orderTime ?? this.orderTime,
        updatedAt: updatedAt ?? this.updatedAt,
        estimatedDeliveryTime:
            estimatedDeliveryTime ?? this.estimatedDeliveryTime,
      );
  OrderEntity copyWithCompanion(OrderTableCompanion data) {
    return OrderEntity(
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      userId: data.userId.present ? data.userId.value : this.userId,
      products: data.products.present ? data.products.value : this.products,
      totalAmount:
          data.totalAmount.present ? data.totalAmount.value : this.totalAmount,
      deliveryDetails: data.deliveryDetails.present
          ? data.deliveryDetails.value
          : this.deliveryDetails,
      status: data.status.present ? data.status.value : this.status,
      orderTime: data.orderTime.present ? data.orderTime.value : this.orderTime,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      estimatedDeliveryTime: data.estimatedDeliveryTime.present
          ? data.estimatedDeliveryTime.value
          : this.estimatedDeliveryTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderEntity(')
          ..write('orderId: $orderId, ')
          ..write('userId: $userId, ')
          ..write('products: $products, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('deliveryDetails: $deliveryDetails, ')
          ..write('status: $status, ')
          ..write('orderTime: $orderTime, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('estimatedDeliveryTime: $estimatedDeliveryTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orderId, userId, products, totalAmount,
      deliveryDetails, status, orderTime, updatedAt, estimatedDeliveryTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderEntity &&
          other.orderId == this.orderId &&
          other.userId == this.userId &&
          other.products == this.products &&
          other.totalAmount == this.totalAmount &&
          other.deliveryDetails == this.deliveryDetails &&
          other.status == this.status &&
          other.orderTime == this.orderTime &&
          other.updatedAt == this.updatedAt &&
          other.estimatedDeliveryTime == this.estimatedDeliveryTime);
}

class OrderTableCompanion extends UpdateCompanion<OrderEntity> {
  final Value<String> orderId;
  final Value<String> userId;
  final Value<List<CartProductModel>> products;
  final Value<double> totalAmount;
  final Value<DeliveryModel> deliveryDetails;
  final Value<OrderStatus> status;
  final Value<DateTime> orderTime;
  final Value<DateTime> updatedAt;
  final Value<DateTime> estimatedDeliveryTime;
  final Value<int> rowid;
  const OrderTableCompanion({
    this.orderId = const Value.absent(),
    this.userId = const Value.absent(),
    this.products = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.deliveryDetails = const Value.absent(),
    this.status = const Value.absent(),
    this.orderTime = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.estimatedDeliveryTime = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderTableCompanion.insert({
    required String orderId,
    required String userId,
    required List<CartProductModel> products,
    required double totalAmount,
    required DeliveryModel deliveryDetails,
    required OrderStatus status,
    required DateTime orderTime,
    required DateTime updatedAt,
    required DateTime estimatedDeliveryTime,
    this.rowid = const Value.absent(),
  })  : orderId = Value(orderId),
        userId = Value(userId),
        products = Value(products),
        totalAmount = Value(totalAmount),
        deliveryDetails = Value(deliveryDetails),
        status = Value(status),
        orderTime = Value(orderTime),
        updatedAt = Value(updatedAt),
        estimatedDeliveryTime = Value(estimatedDeliveryTime);
  static Insertable<OrderEntity> custom({
    Expression<String>? orderId,
    Expression<String>? userId,
    Expression<String>? products,
    Expression<double>? totalAmount,
    Expression<String>? deliveryDetails,
    Expression<String>? status,
    Expression<DateTime>? orderTime,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? estimatedDeliveryTime,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (orderId != null) 'order_id': orderId,
      if (userId != null) 'user_id': userId,
      if (products != null) 'products': products,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (deliveryDetails != null) 'delivery_details': deliveryDetails,
      if (status != null) 'status': status,
      if (orderTime != null) 'order_time': orderTime,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (estimatedDeliveryTime != null)
        'estimated_delivery_time': estimatedDeliveryTime,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderTableCompanion copyWith(
      {Value<String>? orderId,
      Value<String>? userId,
      Value<List<CartProductModel>>? products,
      Value<double>? totalAmount,
      Value<DeliveryModel>? deliveryDetails,
      Value<OrderStatus>? status,
      Value<DateTime>? orderTime,
      Value<DateTime>? updatedAt,
      Value<DateTime>? estimatedDeliveryTime,
      Value<int>? rowid}) {
    return OrderTableCompanion(
      orderId: orderId ?? this.orderId,
      userId: userId ?? this.userId,
      products: products ?? this.products,
      totalAmount: totalAmount ?? this.totalAmount,
      deliveryDetails: deliveryDetails ?? this.deliveryDetails,
      status: status ?? this.status,
      orderTime: orderTime ?? this.orderTime,
      updatedAt: updatedAt ?? this.updatedAt,
      estimatedDeliveryTime:
          estimatedDeliveryTime ?? this.estimatedDeliveryTime,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (products.present) {
      map['products'] = Variable<String>(
          $OrderTableTable.$converterproducts.toSql(products.value));
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    if (deliveryDetails.present) {
      map['delivery_details'] = Variable<String>($OrderTableTable
          .$converterdeliveryDetails
          .toSql(deliveryDetails.value));
    }
    if (status.present) {
      map['status'] = Variable<String>(
          $OrderTableTable.$converterstatus.toSql(status.value));
    }
    if (orderTime.present) {
      map['order_time'] = Variable<DateTime>(orderTime.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (estimatedDeliveryTime.present) {
      map['estimated_delivery_time'] =
          Variable<DateTime>(estimatedDeliveryTime.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderTableCompanion(')
          ..write('orderId: $orderId, ')
          ..write('userId: $userId, ')
          ..write('products: $products, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('deliveryDetails: $deliveryDetails, ')
          ..write('status: $status, ')
          ..write('orderTime: $orderTime, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('estimatedDeliveryTime: $estimatedDeliveryTime, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, CategoryEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [categoryId, name, image];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_table';
  @override
  VerificationContext validateIntegrity(Insertable<CategoryEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {categoryId};
  @override
  CategoryEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryEntity(
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class CategoryEntity extends DataClass implements Insertable<CategoryEntity> {
  final int categoryId;
  final String name;
  final String image;
  const CategoryEntity(
      {required this.categoryId, required this.name, required this.image});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['category_id'] = Variable<int>(categoryId);
    map['name'] = Variable<String>(name);
    map['image'] = Variable<String>(image);
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      categoryId: Value(categoryId),
      name: Value(name),
      image: Value(image),
    );
  }

  factory CategoryEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryEntity(
      categoryId: serializer.fromJson<int>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'categoryId': serializer.toJson<int>(categoryId),
      'name': serializer.toJson<String>(name),
      'image': serializer.toJson<String>(image),
    };
  }

  CategoryEntity copyWith({int? categoryId, String? name, String? image}) =>
      CategoryEntity(
        categoryId: categoryId ?? this.categoryId,
        name: name ?? this.name,
        image: image ?? this.image,
      );
  CategoryEntity copyWithCompanion(CategoryTableCompanion data) {
    return CategoryEntity(
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      name: data.name.present ? data.name.value : this.name,
      image: data.image.present ? data.image.value : this.image,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryEntity(')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(categoryId, name, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryEntity &&
          other.categoryId == this.categoryId &&
          other.name == this.name &&
          other.image == this.image);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryEntity> {
  final Value<int> categoryId;
  final Value<String> name;
  final Value<String> image;
  const CategoryTableCompanion({
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
    this.image = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.categoryId = const Value.absent(),
    required String name,
    required String image,
  })  : name = Value(name),
        image = Value(image);
  static Insertable<CategoryEntity> custom({
    Expression<int>? categoryId,
    Expression<String>? name,
    Expression<String>? image,
  }) {
    return RawValuesInsertable({
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
      if (image != null) 'image': image,
    });
  }

  CategoryTableCompanion copyWith(
      {Value<int>? categoryId, Value<String>? name, Value<String>? image}) {
    return CategoryTableCompanion(
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $AddressTableTable addressTable = $AddressTableTable(this);
  late final $ProductTableTable productTable = $ProductTableTable(this);
  late final $CartProductTableTable cartProductTable =
      $CartProductTableTable(this);
  late final $DiscountTableTable discountTable = $DiscountTableTable(this);
  late final $CartTableTable cartTable = $CartTableTable(this);
  late final $PreferenceTableTable preferenceTable =
      $PreferenceTableTable(this);
  late final $OrderTableTable orderTable = $OrderTableTable(this);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        userTable,
        addressTable,
        productTable,
        cartProductTable,
        discountTable,
        cartTable,
        preferenceTable,
        orderTable,
        categoryTable
      ];
}

typedef $$UserTableTableCreateCompanionBuilder = UserTableCompanion Function({
  required String userId,
  Value<String?> fullName,
  Value<String?> email,
  Value<String?> imageUrl,
  Value<String?> phoneNo,
  Value<DateTime?> dateJoined,
  Value<String?> pushToken,
  Value<int> rowid,
});
typedef $$UserTableTableUpdateCompanionBuilder = UserTableCompanion Function({
  Value<String> userId,
  Value<String?> fullName,
  Value<String?> email,
  Value<String?> imageUrl,
  Value<String?> phoneNo,
  Value<DateTime?> dateJoined,
  Value<String?> pushToken,
  Value<int> rowid,
});

final class $$UserTableTableReferences
    extends BaseReferences<_$AppDatabase, $UserTableTable, UserEntity> {
  $$UserTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CartTableTable, List<CartEntity>>
      _cartTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.cartTable,
              aliasName:
                  $_aliasNameGenerator(db.userTable.userId, db.cartTable.user));

  $$CartTableTableProcessedTableManager get cartTableRefs {
    final manager = $$CartTableTableTableManager($_db, $_db.cartTable)
        .filter((f) => f.user.userId($_item.userId));

    final cache = $_typedResult.readTableOrNull(_cartTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableFilterComposer(super.$state);
  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get fullName => $state.composableBuilder(
      column: $state.table.fullName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get imageUrl => $state.composableBuilder(
      column: $state.table.imageUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phoneNo => $state.composableBuilder(
      column: $state.table.phoneNo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateJoined => $state.composableBuilder(
      column: $state.table.dateJoined,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get pushToken => $state.composableBuilder(
      column: $state.table.pushToken,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter cartTableRefs(
      ComposableFilter Function($$CartTableTableFilterComposer f) f) {
    final $$CartTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $state.db.cartTable,
        getReferencedColumn: (t) => t.user,
        builder: (joinBuilder, parentComposers) =>
            $$CartTableTableFilterComposer(ComposerState(
                $state.db, $state.db.cartTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$UserTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get fullName => $state.composableBuilder(
      column: $state.table.fullName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get imageUrl => $state.composableBuilder(
      column: $state.table.imageUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phoneNo => $state.composableBuilder(
      column: $state.table.phoneNo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateJoined => $state.composableBuilder(
      column: $state.table.dateJoined,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get pushToken => $state.composableBuilder(
      column: $state.table.pushToken,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UserTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserEntity,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (UserEntity, $$UserTableTableReferences),
    UserEntity,
    PrefetchHooks Function({bool cartTableRefs})> {
  $$UserTableTableTableManager(_$AppDatabase db, $UserTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> userId = const Value.absent(),
            Value<String?> fullName = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> phoneNo = const Value.absent(),
            Value<DateTime?> dateJoined = const Value.absent(),
            Value<String?> pushToken = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserTableCompanion(
            userId: userId,
            fullName: fullName,
            email: email,
            imageUrl: imageUrl,
            phoneNo: phoneNo,
            dateJoined: dateJoined,
            pushToken: pushToken,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userId,
            Value<String?> fullName = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> phoneNo = const Value.absent(),
            Value<DateTime?> dateJoined = const Value.absent(),
            Value<String?> pushToken = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserTableCompanion.insert(
            userId: userId,
            fullName: fullName,
            email: email,
            imageUrl: imageUrl,
            phoneNo: phoneNo,
            dateJoined: dateJoined,
            pushToken: pushToken,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({cartTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (cartTableRefs) db.cartTable],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (cartTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$UserTableTableReferences._cartTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableTableReferences(db, table, p0)
                                .cartTableRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.user == item.userId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UserTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserEntity,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (UserEntity, $$UserTableTableReferences),
    UserEntity,
    PrefetchHooks Function({bool cartTableRefs})>;
typedef $$AddressTableTableCreateCompanionBuilder = AddressTableCompanion
    Function({
  required String addressId,
  required String street,
  required String city,
  required String state,
  required String postalCode,
  required String country,
  Value<String?> landmark,
  Value<String?> apartmentNumber,
  Value<String?> phoneNumber,
  Value<int> rowid,
});
typedef $$AddressTableTableUpdateCompanionBuilder = AddressTableCompanion
    Function({
  Value<String> addressId,
  Value<String> street,
  Value<String> city,
  Value<String> state,
  Value<String> postalCode,
  Value<String> country,
  Value<String?> landmark,
  Value<String?> apartmentNumber,
  Value<String?> phoneNumber,
  Value<int> rowid,
});

class $$AddressTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AddressTableTable> {
  $$AddressTableTableFilterComposer(super.$state);
  ColumnFilters<String> get addressId => $state.composableBuilder(
      column: $state.table.addressId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get street => $state.composableBuilder(
      column: $state.table.street,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get city => $state.composableBuilder(
      column: $state.table.city,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get state => $state.composableBuilder(
      column: $state.table.state,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get postalCode => $state.composableBuilder(
      column: $state.table.postalCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get country => $state.composableBuilder(
      column: $state.table.country,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get landmark => $state.composableBuilder(
      column: $state.table.landmark,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get apartmentNumber => $state.composableBuilder(
      column: $state.table.apartmentNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phoneNumber => $state.composableBuilder(
      column: $state.table.phoneNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AddressTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AddressTableTable> {
  $$AddressTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get addressId => $state.composableBuilder(
      column: $state.table.addressId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get street => $state.composableBuilder(
      column: $state.table.street,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get city => $state.composableBuilder(
      column: $state.table.city,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get state => $state.composableBuilder(
      column: $state.table.state,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get postalCode => $state.composableBuilder(
      column: $state.table.postalCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get country => $state.composableBuilder(
      column: $state.table.country,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get landmark => $state.composableBuilder(
      column: $state.table.landmark,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get apartmentNumber => $state.composableBuilder(
      column: $state.table.apartmentNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phoneNumber => $state.composableBuilder(
      column: $state.table.phoneNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$AddressTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AddressTableTable,
    AddressEntity,
    $$AddressTableTableFilterComposer,
    $$AddressTableTableOrderingComposer,
    $$AddressTableTableCreateCompanionBuilder,
    $$AddressTableTableUpdateCompanionBuilder,
    (
      AddressEntity,
      BaseReferences<_$AppDatabase, $AddressTableTable, AddressEntity>
    ),
    AddressEntity,
    PrefetchHooks Function()> {
  $$AddressTableTableTableManager(_$AppDatabase db, $AddressTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AddressTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AddressTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> addressId = const Value.absent(),
            Value<String> street = const Value.absent(),
            Value<String> city = const Value.absent(),
            Value<String> state = const Value.absent(),
            Value<String> postalCode = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<String?> landmark = const Value.absent(),
            Value<String?> apartmentNumber = const Value.absent(),
            Value<String?> phoneNumber = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AddressTableCompanion(
            addressId: addressId,
            street: street,
            city: city,
            state: state,
            postalCode: postalCode,
            country: country,
            landmark: landmark,
            apartmentNumber: apartmentNumber,
            phoneNumber: phoneNumber,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String addressId,
            required String street,
            required String city,
            required String state,
            required String postalCode,
            required String country,
            Value<String?> landmark = const Value.absent(),
            Value<String?> apartmentNumber = const Value.absent(),
            Value<String?> phoneNumber = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AddressTableCompanion.insert(
            addressId: addressId,
            street: street,
            city: city,
            state: state,
            postalCode: postalCode,
            country: country,
            landmark: landmark,
            apartmentNumber: apartmentNumber,
            phoneNumber: phoneNumber,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AddressTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AddressTableTable,
    AddressEntity,
    $$AddressTableTableFilterComposer,
    $$AddressTableTableOrderingComposer,
    $$AddressTableTableCreateCompanionBuilder,
    $$AddressTableTableUpdateCompanionBuilder,
    (
      AddressEntity,
      BaseReferences<_$AppDatabase, $AddressTableTable, AddressEntity>
    ),
    AddressEntity,
    PrefetchHooks Function()>;
typedef $$ProductTableTableCreateCompanionBuilder = ProductTableCompanion
    Function({
  required String productId,
  required String title,
  Value<List<String>?> images,
  required String thumbnail,
  Value<List<CategoryModel>?> category,
  Value<int?> ratingCount,
  required double rating,
  required double price,
  Value<List<IngredientModel>?> ingredient,
  Value<List<VariationModel>?> variations,
  Value<String?> description,
  Value<String?> tagline,
  Value<double?> salePrice,
  Value<List<PromotionModel>?> promotion,
  required bool isAvailable,
  Value<int> rowid,
});
typedef $$ProductTableTableUpdateCompanionBuilder = ProductTableCompanion
    Function({
  Value<String> productId,
  Value<String> title,
  Value<List<String>?> images,
  Value<String> thumbnail,
  Value<List<CategoryModel>?> category,
  Value<int?> ratingCount,
  Value<double> rating,
  Value<double> price,
  Value<List<IngredientModel>?> ingredient,
  Value<List<VariationModel>?> variations,
  Value<String?> description,
  Value<String?> tagline,
  Value<double?> salePrice,
  Value<List<PromotionModel>?> promotion,
  Value<bool> isAvailable,
  Value<int> rowid,
});

final class $$ProductTableTableReferences
    extends BaseReferences<_$AppDatabase, $ProductTableTable, ProductEntity> {
  $$ProductTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CartProductTableTable, List<CartProductEntity>>
      _cartProductTableRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.cartProductTable,
              aliasName: $_aliasNameGenerator(
                  db.productTable.productId, db.cartProductTable.product));

  $$CartProductTableTableProcessedTableManager get cartProductTableRefs {
    final manager =
        $$CartProductTableTableTableManager($_db, $_db.cartProductTable)
            .filter((f) => f.product.productId($_item.productId));

    final cache =
        $_typedResult.readTableOrNull(_cartProductTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProductTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableFilterComposer(super.$state);
  ColumnFilters<String> get productId => $state.composableBuilder(
      column: $state.table.productId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>?, List<String>, String>
      get images => $state.composableBuilder(
          column: $state.table.images,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get thumbnail => $state.composableBuilder(
      column: $state.table.thumbnail,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<CategoryModel>?, List<CategoryModel>,
          String>
      get category => $state.composableBuilder(
          column: $state.table.category,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get ratingCount => $state.composableBuilder(
      column: $state.table.ratingCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<IngredientModel>?, List<IngredientModel>,
          String>
      get ingredient => $state.composableBuilder(
          column: $state.table.ingredient,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<VariationModel>?, List<VariationModel>,
          String>
      get variations => $state.composableBuilder(
          column: $state.table.variations,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get tagline => $state.composableBuilder(
      column: $state.table.tagline,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get salePrice => $state.composableBuilder(
      column: $state.table.salePrice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<PromotionModel>?, List<PromotionModel>,
          String>
      get promotion => $state.composableBuilder(
          column: $state.table.promotion,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<bool> get isAvailable => $state.composableBuilder(
      column: $state.table.isAvailable,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter cartProductTableRefs(
      ComposableFilter Function($$CartProductTableTableFilterComposer f) f) {
    final $$CartProductTableTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.productId,
            referencedTable: $state.db.cartProductTable,
            getReferencedColumn: (t) => t.product,
            builder: (joinBuilder, parentComposers) =>
                $$CartProductTableTableFilterComposer(ComposerState($state.db,
                    $state.db.cartProductTable, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$ProductTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get productId => $state.composableBuilder(
      column: $state.table.productId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get images => $state.composableBuilder(
      column: $state.table.images,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get thumbnail => $state.composableBuilder(
      column: $state.table.thumbnail,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get ratingCount => $state.composableBuilder(
      column: $state.table.ratingCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get rating => $state.composableBuilder(
      column: $state.table.rating,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get price => $state.composableBuilder(
      column: $state.table.price,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get ingredient => $state.composableBuilder(
      column: $state.table.ingredient,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get variations => $state.composableBuilder(
      column: $state.table.variations,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tagline => $state.composableBuilder(
      column: $state.table.tagline,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get salePrice => $state.composableBuilder(
      column: $state.table.salePrice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get promotion => $state.composableBuilder(
      column: $state.table.promotion,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isAvailable => $state.composableBuilder(
      column: $state.table.isAvailable,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ProductTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ProductTableTable,
    ProductEntity,
    $$ProductTableTableFilterComposer,
    $$ProductTableTableOrderingComposer,
    $$ProductTableTableCreateCompanionBuilder,
    $$ProductTableTableUpdateCompanionBuilder,
    (ProductEntity, $$ProductTableTableReferences),
    ProductEntity,
    PrefetchHooks Function({bool cartProductTableRefs})> {
  $$ProductTableTableTableManager(_$AppDatabase db, $ProductTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ProductTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ProductTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> productId = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<List<String>?> images = const Value.absent(),
            Value<String> thumbnail = const Value.absent(),
            Value<List<CategoryModel>?> category = const Value.absent(),
            Value<int?> ratingCount = const Value.absent(),
            Value<double> rating = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<List<IngredientModel>?> ingredient = const Value.absent(),
            Value<List<VariationModel>?> variations = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> tagline = const Value.absent(),
            Value<double?> salePrice = const Value.absent(),
            Value<List<PromotionModel>?> promotion = const Value.absent(),
            Value<bool> isAvailable = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductTableCompanion(
            productId: productId,
            title: title,
            images: images,
            thumbnail: thumbnail,
            category: category,
            ratingCount: ratingCount,
            rating: rating,
            price: price,
            ingredient: ingredient,
            variations: variations,
            description: description,
            tagline: tagline,
            salePrice: salePrice,
            promotion: promotion,
            isAvailable: isAvailable,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String productId,
            required String title,
            Value<List<String>?> images = const Value.absent(),
            required String thumbnail,
            Value<List<CategoryModel>?> category = const Value.absent(),
            Value<int?> ratingCount = const Value.absent(),
            required double rating,
            required double price,
            Value<List<IngredientModel>?> ingredient = const Value.absent(),
            Value<List<VariationModel>?> variations = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> tagline = const Value.absent(),
            Value<double?> salePrice = const Value.absent(),
            Value<List<PromotionModel>?> promotion = const Value.absent(),
            required bool isAvailable,
            Value<int> rowid = const Value.absent(),
          }) =>
              ProductTableCompanion.insert(
            productId: productId,
            title: title,
            images: images,
            thumbnail: thumbnail,
            category: category,
            ratingCount: ratingCount,
            rating: rating,
            price: price,
            ingredient: ingredient,
            variations: variations,
            description: description,
            tagline: tagline,
            salePrice: salePrice,
            promotion: promotion,
            isAvailable: isAvailable,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ProductTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({cartProductTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (cartProductTableRefs) db.cartProductTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (cartProductTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ProductTableTableReferences
                            ._cartProductTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProductTableTableReferences(db, table, p0)
                                .cartProductTableRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.product == item.productId),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProductTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ProductTableTable,
    ProductEntity,
    $$ProductTableTableFilterComposer,
    $$ProductTableTableOrderingComposer,
    $$ProductTableTableCreateCompanionBuilder,
    $$ProductTableTableUpdateCompanionBuilder,
    (ProductEntity, $$ProductTableTableReferences),
    ProductEntity,
    PrefetchHooks Function({bool cartProductTableRefs})>;
typedef $$CartProductTableTableCreateCompanionBuilder
    = CartProductTableCompanion Function({
  required String cartId,
  required double quantity,
  required bool isAvailable,
  required DateTime addedAt,
  required DateTime updatedAt,
  required double deliveryCharge,
  required double totalPrice,
  required VariationModel variation,
  required String product,
  Value<int> rowid,
});
typedef $$CartProductTableTableUpdateCompanionBuilder
    = CartProductTableCompanion Function({
  Value<String> cartId,
  Value<double> quantity,
  Value<bool> isAvailable,
  Value<DateTime> addedAt,
  Value<DateTime> updatedAt,
  Value<double> deliveryCharge,
  Value<double> totalPrice,
  Value<VariationModel> variation,
  Value<String> product,
  Value<int> rowid,
});

final class $$CartProductTableTableReferences extends BaseReferences<
    _$AppDatabase, $CartProductTableTable, CartProductEntity> {
  $$CartProductTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $ProductTableTable _productTable(_$AppDatabase db) =>
      db.productTable.createAlias($_aliasNameGenerator(
          db.cartProductTable.product, db.productTable.productId));

  $$ProductTableTableProcessedTableManager? get product {
    if ($_item.product == null) return null;
    final manager = $$ProductTableTableTableManager($_db, $_db.productTable)
        .filter((f) => f.productId($_item.product!));
    final item = $_typedResult.readTableOrNull(_productTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CartProductTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CartProductTableTable> {
  $$CartProductTableTableFilterComposer(super.$state);
  ColumnFilters<String> get cartId => $state.composableBuilder(
      column: $state.table.cartId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isAvailable => $state.composableBuilder(
      column: $state.table.isAvailable,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get addedAt => $state.composableBuilder(
      column: $state.table.addedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get deliveryCharge => $state.composableBuilder(
      column: $state.table.deliveryCharge,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get totalPrice => $state.composableBuilder(
      column: $state.table.totalPrice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<VariationModel, VariationModel, String>
      get variation => $state.composableBuilder(
          column: $state.table.variation,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  $$ProductTableTableFilterComposer get product {
    final $$ProductTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.product,
        referencedTable: $state.db.productTable,
        getReferencedColumn: (t) => t.productId,
        builder: (joinBuilder, parentComposers) =>
            $$ProductTableTableFilterComposer(ComposerState($state.db,
                $state.db.productTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CartProductTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CartProductTableTable> {
  $$CartProductTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get cartId => $state.composableBuilder(
      column: $state.table.cartId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isAvailable => $state.composableBuilder(
      column: $state.table.isAvailable,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get addedAt => $state.composableBuilder(
      column: $state.table.addedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get deliveryCharge => $state.composableBuilder(
      column: $state.table.deliveryCharge,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get totalPrice => $state.composableBuilder(
      column: $state.table.totalPrice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get variation => $state.composableBuilder(
      column: $state.table.variation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$ProductTableTableOrderingComposer get product {
    final $$ProductTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.product,
        referencedTable: $state.db.productTable,
        getReferencedColumn: (t) => t.productId,
        builder: (joinBuilder, parentComposers) =>
            $$ProductTableTableOrderingComposer(ComposerState($state.db,
                $state.db.productTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CartProductTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CartProductTableTable,
    CartProductEntity,
    $$CartProductTableTableFilterComposer,
    $$CartProductTableTableOrderingComposer,
    $$CartProductTableTableCreateCompanionBuilder,
    $$CartProductTableTableUpdateCompanionBuilder,
    (CartProductEntity, $$CartProductTableTableReferences),
    CartProductEntity,
    PrefetchHooks Function({bool product})> {
  $$CartProductTableTableTableManager(
      _$AppDatabase db, $CartProductTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CartProductTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CartProductTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> cartId = const Value.absent(),
            Value<double> quantity = const Value.absent(),
            Value<bool> isAvailable = const Value.absent(),
            Value<DateTime> addedAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<double> deliveryCharge = const Value.absent(),
            Value<double> totalPrice = const Value.absent(),
            Value<VariationModel> variation = const Value.absent(),
            Value<String> product = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CartProductTableCompanion(
            cartId: cartId,
            quantity: quantity,
            isAvailable: isAvailable,
            addedAt: addedAt,
            updatedAt: updatedAt,
            deliveryCharge: deliveryCharge,
            totalPrice: totalPrice,
            variation: variation,
            product: product,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cartId,
            required double quantity,
            required bool isAvailable,
            required DateTime addedAt,
            required DateTime updatedAt,
            required double deliveryCharge,
            required double totalPrice,
            required VariationModel variation,
            required String product,
            Value<int> rowid = const Value.absent(),
          }) =>
              CartProductTableCompanion.insert(
            cartId: cartId,
            quantity: quantity,
            isAvailable: isAvailable,
            addedAt: addedAt,
            updatedAt: updatedAt,
            deliveryCharge: deliveryCharge,
            totalPrice: totalPrice,
            variation: variation,
            product: product,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CartProductTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({product = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (product) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.product,
                    referencedTable:
                        $$CartProductTableTableReferences._productTable(db),
                    referencedColumn: $$CartProductTableTableReferences
                        ._productTable(db)
                        .productId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CartProductTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CartProductTableTable,
    CartProductEntity,
    $$CartProductTableTableFilterComposer,
    $$CartProductTableTableOrderingComposer,
    $$CartProductTableTableCreateCompanionBuilder,
    $$CartProductTableTableUpdateCompanionBuilder,
    (CartProductEntity, $$CartProductTableTableReferences),
    CartProductEntity,
    PrefetchHooks Function({bool product})>;
typedef $$DiscountTableTableCreateCompanionBuilder = DiscountTableCompanion
    Function({
  required String discountId,
  required String code,
  Value<double?> amount,
  required bool isPercentage,
  required double maxDiscount,
  required DateTime expiryDate,
  required DateTime startDate,
  Value<String?> description,
  Value<int> rowid,
});
typedef $$DiscountTableTableUpdateCompanionBuilder = DiscountTableCompanion
    Function({
  Value<String> discountId,
  Value<String> code,
  Value<double?> amount,
  Value<bool> isPercentage,
  Value<double> maxDiscount,
  Value<DateTime> expiryDate,
  Value<DateTime> startDate,
  Value<String?> description,
  Value<int> rowid,
});

class $$DiscountTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DiscountTableTable> {
  $$DiscountTableTableFilterComposer(super.$state);
  ColumnFilters<String> get discountId => $state.composableBuilder(
      column: $state.table.discountId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isPercentage => $state.composableBuilder(
      column: $state.table.isPercentage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get maxDiscount => $state.composableBuilder(
      column: $state.table.maxDiscount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get expiryDate => $state.composableBuilder(
      column: $state.table.expiryDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get startDate => $state.composableBuilder(
      column: $state.table.startDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DiscountTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DiscountTableTable> {
  $$DiscountTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get discountId => $state.composableBuilder(
      column: $state.table.discountId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isPercentage => $state.composableBuilder(
      column: $state.table.isPercentage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get maxDiscount => $state.composableBuilder(
      column: $state.table.maxDiscount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get expiryDate => $state.composableBuilder(
      column: $state.table.expiryDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get startDate => $state.composableBuilder(
      column: $state.table.startDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DiscountTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DiscountTableTable,
    DiscountEntity,
    $$DiscountTableTableFilterComposer,
    $$DiscountTableTableOrderingComposer,
    $$DiscountTableTableCreateCompanionBuilder,
    $$DiscountTableTableUpdateCompanionBuilder,
    (
      DiscountEntity,
      BaseReferences<_$AppDatabase, $DiscountTableTable, DiscountEntity>
    ),
    DiscountEntity,
    PrefetchHooks Function()> {
  $$DiscountTableTableTableManager(_$AppDatabase db, $DiscountTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DiscountTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DiscountTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> discountId = const Value.absent(),
            Value<String> code = const Value.absent(),
            Value<double?> amount = const Value.absent(),
            Value<bool> isPercentage = const Value.absent(),
            Value<double> maxDiscount = const Value.absent(),
            Value<DateTime> expiryDate = const Value.absent(),
            Value<DateTime> startDate = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DiscountTableCompanion(
            discountId: discountId,
            code: code,
            amount: amount,
            isPercentage: isPercentage,
            maxDiscount: maxDiscount,
            expiryDate: expiryDate,
            startDate: startDate,
            description: description,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String discountId,
            required String code,
            Value<double?> amount = const Value.absent(),
            required bool isPercentage,
            required double maxDiscount,
            required DateTime expiryDate,
            required DateTime startDate,
            Value<String?> description = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DiscountTableCompanion.insert(
            discountId: discountId,
            code: code,
            amount: amount,
            isPercentage: isPercentage,
            maxDiscount: maxDiscount,
            expiryDate: expiryDate,
            startDate: startDate,
            description: description,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DiscountTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $DiscountTableTable,
    DiscountEntity,
    $$DiscountTableTableFilterComposer,
    $$DiscountTableTableOrderingComposer,
    $$DiscountTableTableCreateCompanionBuilder,
    $$DiscountTableTableUpdateCompanionBuilder,
    (
      DiscountEntity,
      BaseReferences<_$AppDatabase, $DiscountTableTable, DiscountEntity>
    ),
    DiscountEntity,
    PrefetchHooks Function()>;
typedef $$CartTableTableCreateCompanionBuilder = CartTableCompanion Function({
  required String cartId,
  required String user,
  Value<String?> appDiscount,
  Value<String?> sellerDiscount,
  required DeliveryModel deliveryDetails,
  required double deliveryCharge,
  required double totalPrice,
  required double subTotal,
  required double discount,
  required double grandTotal,
  Value<int> rowid,
});
typedef $$CartTableTableUpdateCompanionBuilder = CartTableCompanion Function({
  Value<String> cartId,
  Value<String> user,
  Value<String?> appDiscount,
  Value<String?> sellerDiscount,
  Value<DeliveryModel> deliveryDetails,
  Value<double> deliveryCharge,
  Value<double> totalPrice,
  Value<double> subTotal,
  Value<double> discount,
  Value<double> grandTotal,
  Value<int> rowid,
});

final class $$CartTableTableReferences
    extends BaseReferences<_$AppDatabase, $CartTableTable, CartEntity> {
  $$CartTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _userTable(_$AppDatabase db) =>
      db.userTable.createAlias(
          $_aliasNameGenerator(db.cartTable.user, db.userTable.userId));

  $$UserTableTableProcessedTableManager? get user {
    if ($_item.user == null) return null;
    final manager = $$UserTableTableTableManager($_db, $_db.userTable)
        .filter((f) => f.userId($_item.user!));
    final item = $_typedResult.readTableOrNull(_userTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DiscountTableTable _appDiscountTable(_$AppDatabase db) =>
      db.discountTable.createAlias($_aliasNameGenerator(
          db.cartTable.appDiscount, db.discountTable.discountId));

  $$DiscountTableTableProcessedTableManager? get appDiscount {
    if ($_item.appDiscount == null) return null;
    final manager = $$DiscountTableTableTableManager($_db, $_db.discountTable)
        .filter((f) => f.discountId($_item.appDiscount!));
    final item = $_typedResult.readTableOrNull(_appDiscountTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DiscountTableTable _sellerDiscountTable(_$AppDatabase db) =>
      db.discountTable.createAlias($_aliasNameGenerator(
          db.cartTable.sellerDiscount, db.discountTable.discountId));

  $$DiscountTableTableProcessedTableManager? get sellerDiscount {
    if ($_item.sellerDiscount == null) return null;
    final manager = $$DiscountTableTableTableManager($_db, $_db.discountTable)
        .filter((f) => f.discountId($_item.sellerDiscount!));
    final item = $_typedResult.readTableOrNull(_sellerDiscountTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$CartTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CartTableTable> {
  $$CartTableTableFilterComposer(super.$state);
  ColumnFilters<String> get cartId => $state.composableBuilder(
      column: $state.table.cartId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<DeliveryModel, DeliveryModel, String>
      get deliveryDetails => $state.composableBuilder(
          column: $state.table.deliveryDetails,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<double> get deliveryCharge => $state.composableBuilder(
      column: $state.table.deliveryCharge,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get totalPrice => $state.composableBuilder(
      column: $state.table.totalPrice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get subTotal => $state.composableBuilder(
      column: $state.table.subTotal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get discount => $state.composableBuilder(
      column: $state.table.discount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get grandTotal => $state.composableBuilder(
      column: $state.table.grandTotal,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$UserTableTableFilterComposer get user {
    final $$UserTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $state.db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder, parentComposers) =>
            $$UserTableTableFilterComposer(ComposerState(
                $state.db, $state.db.userTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$DiscountTableTableFilterComposer get appDiscount {
    final $$DiscountTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.appDiscount,
        referencedTable: $state.db.discountTable,
        getReferencedColumn: (t) => t.discountId,
        builder: (joinBuilder, parentComposers) =>
            $$DiscountTableTableFilterComposer(ComposerState($state.db,
                $state.db.discountTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$DiscountTableTableFilterComposer get sellerDiscount {
    final $$DiscountTableTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.sellerDiscount,
        referencedTable: $state.db.discountTable,
        getReferencedColumn: (t) => t.discountId,
        builder: (joinBuilder, parentComposers) =>
            $$DiscountTableTableFilterComposer(ComposerState($state.db,
                $state.db.discountTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CartTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CartTableTable> {
  $$CartTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get cartId => $state.composableBuilder(
      column: $state.table.cartId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deliveryDetails => $state.composableBuilder(
      column: $state.table.deliveryDetails,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get deliveryCharge => $state.composableBuilder(
      column: $state.table.deliveryCharge,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get totalPrice => $state.composableBuilder(
      column: $state.table.totalPrice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get subTotal => $state.composableBuilder(
      column: $state.table.subTotal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get discount => $state.composableBuilder(
      column: $state.table.discount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get grandTotal => $state.composableBuilder(
      column: $state.table.grandTotal,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$UserTableTableOrderingComposer get user {
    final $$UserTableTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $state.db.userTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder, parentComposers) =>
            $$UserTableTableOrderingComposer(ComposerState(
                $state.db, $state.db.userTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$DiscountTableTableOrderingComposer get appDiscount {
    final $$DiscountTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.appDiscount,
            referencedTable: $state.db.discountTable,
            getReferencedColumn: (t) => t.discountId,
            builder: (joinBuilder, parentComposers) =>
                $$DiscountTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.discountTable, joinBuilder, parentComposers)));
    return composer;
  }

  $$DiscountTableTableOrderingComposer get sellerDiscount {
    final $$DiscountTableTableOrderingComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.sellerDiscount,
            referencedTable: $state.db.discountTable,
            getReferencedColumn: (t) => t.discountId,
            builder: (joinBuilder, parentComposers) =>
                $$DiscountTableTableOrderingComposer(ComposerState($state.db,
                    $state.db.discountTable, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$CartTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CartTableTable,
    CartEntity,
    $$CartTableTableFilterComposer,
    $$CartTableTableOrderingComposer,
    $$CartTableTableCreateCompanionBuilder,
    $$CartTableTableUpdateCompanionBuilder,
    (CartEntity, $$CartTableTableReferences),
    CartEntity,
    PrefetchHooks Function(
        {bool user, bool appDiscount, bool sellerDiscount})> {
  $$CartTableTableTableManager(_$AppDatabase db, $CartTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CartTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CartTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> cartId = const Value.absent(),
            Value<String> user = const Value.absent(),
            Value<String?> appDiscount = const Value.absent(),
            Value<String?> sellerDiscount = const Value.absent(),
            Value<DeliveryModel> deliveryDetails = const Value.absent(),
            Value<double> deliveryCharge = const Value.absent(),
            Value<double> totalPrice = const Value.absent(),
            Value<double> subTotal = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<double> grandTotal = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CartTableCompanion(
            cartId: cartId,
            user: user,
            appDiscount: appDiscount,
            sellerDiscount: sellerDiscount,
            deliveryDetails: deliveryDetails,
            deliveryCharge: deliveryCharge,
            totalPrice: totalPrice,
            subTotal: subTotal,
            discount: discount,
            grandTotal: grandTotal,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cartId,
            required String user,
            Value<String?> appDiscount = const Value.absent(),
            Value<String?> sellerDiscount = const Value.absent(),
            required DeliveryModel deliveryDetails,
            required double deliveryCharge,
            required double totalPrice,
            required double subTotal,
            required double discount,
            required double grandTotal,
            Value<int> rowid = const Value.absent(),
          }) =>
              CartTableCompanion.insert(
            cartId: cartId,
            user: user,
            appDiscount: appDiscount,
            sellerDiscount: sellerDiscount,
            deliveryDetails: deliveryDetails,
            deliveryCharge: deliveryCharge,
            totalPrice: totalPrice,
            subTotal: subTotal,
            discount: discount,
            grandTotal: grandTotal,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CartTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {user = false, appDiscount = false, sellerDiscount = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (user) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.user,
                    referencedTable: $$CartTableTableReferences._userTable(db),
                    referencedColumn:
                        $$CartTableTableReferences._userTable(db).userId,
                  ) as T;
                }
                if (appDiscount) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.appDiscount,
                    referencedTable:
                        $$CartTableTableReferences._appDiscountTable(db),
                    referencedColumn: $$CartTableTableReferences
                        ._appDiscountTable(db)
                        .discountId,
                  ) as T;
                }
                if (sellerDiscount) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.sellerDiscount,
                    referencedTable:
                        $$CartTableTableReferences._sellerDiscountTable(db),
                    referencedColumn: $$CartTableTableReferences
                        ._sellerDiscountTable(db)
                        .discountId,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$CartTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CartTableTable,
    CartEntity,
    $$CartTableTableFilterComposer,
    $$CartTableTableOrderingComposer,
    $$CartTableTableCreateCompanionBuilder,
    $$CartTableTableUpdateCompanionBuilder,
    (CartEntity, $$CartTableTableReferences),
    CartEntity,
    PrefetchHooks Function({bool user, bool appDiscount, bool sellerDiscount})>;
typedef $$PreferenceTableTableCreateCompanionBuilder = PreferenceTableCompanion
    Function({
  required String key,
  required String value,
  Value<int> rowid,
});
typedef $$PreferenceTableTableUpdateCompanionBuilder = PreferenceTableCompanion
    Function({
  Value<String> key,
  Value<String> value,
  Value<int> rowid,
});

class $$PreferenceTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $PreferenceTableTable> {
  $$PreferenceTableTableFilterComposer(super.$state);
  ColumnFilters<String> get key => $state.composableBuilder(
      column: $state.table.key,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$PreferenceTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $PreferenceTableTable> {
  $$PreferenceTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get key => $state.composableBuilder(
      column: $state.table.key,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$PreferenceTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PreferenceTableTable,
    SettingEntity,
    $$PreferenceTableTableFilterComposer,
    $$PreferenceTableTableOrderingComposer,
    $$PreferenceTableTableCreateCompanionBuilder,
    $$PreferenceTableTableUpdateCompanionBuilder,
    (
      SettingEntity,
      BaseReferences<_$AppDatabase, $PreferenceTableTable, SettingEntity>
    ),
    SettingEntity,
    PrefetchHooks Function()> {
  $$PreferenceTableTableTableManager(
      _$AppDatabase db, $PreferenceTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$PreferenceTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$PreferenceTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> key = const Value.absent(),
            Value<String> value = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              PreferenceTableCompanion(
            key: key,
            value: value,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String key,
            required String value,
            Value<int> rowid = const Value.absent(),
          }) =>
              PreferenceTableCompanion.insert(
            key: key,
            value: value,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PreferenceTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PreferenceTableTable,
    SettingEntity,
    $$PreferenceTableTableFilterComposer,
    $$PreferenceTableTableOrderingComposer,
    $$PreferenceTableTableCreateCompanionBuilder,
    $$PreferenceTableTableUpdateCompanionBuilder,
    (
      SettingEntity,
      BaseReferences<_$AppDatabase, $PreferenceTableTable, SettingEntity>
    ),
    SettingEntity,
    PrefetchHooks Function()>;
typedef $$OrderTableTableCreateCompanionBuilder = OrderTableCompanion Function({
  required String orderId,
  required String userId,
  required List<CartProductModel> products,
  required double totalAmount,
  required DeliveryModel deliveryDetails,
  required OrderStatus status,
  required DateTime orderTime,
  required DateTime updatedAt,
  required DateTime estimatedDeliveryTime,
  Value<int> rowid,
});
typedef $$OrderTableTableUpdateCompanionBuilder = OrderTableCompanion Function({
  Value<String> orderId,
  Value<String> userId,
  Value<List<CartProductModel>> products,
  Value<double> totalAmount,
  Value<DeliveryModel> deliveryDetails,
  Value<OrderStatus> status,
  Value<DateTime> orderTime,
  Value<DateTime> updatedAt,
  Value<DateTime> estimatedDeliveryTime,
  Value<int> rowid,
});

class $$OrderTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableFilterComposer(super.$state);
  ColumnFilters<String> get orderId => $state.composableBuilder(
      column: $state.table.orderId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<CartProductModel>, List<CartProductModel>,
          String>
      get products => $state.composableBuilder(
          column: $state.table.products,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<double> get totalAmount => $state.composableBuilder(
      column: $state.table.totalAmount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<DeliveryModel, DeliveryModel, String>
      get deliveryDetails => $state.composableBuilder(
          column: $state.table.deliveryDetails,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<OrderStatus, OrderStatus, String> get status =>
      $state.composableBuilder(
          column: $state.table.status,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get orderTime => $state.composableBuilder(
      column: $state.table.orderTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get estimatedDeliveryTime => $state.composableBuilder(
      column: $state.table.estimatedDeliveryTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$OrderTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $OrderTableTable> {
  $$OrderTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get orderId => $state.composableBuilder(
      column: $state.table.orderId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get products => $state.composableBuilder(
      column: $state.table.products,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get totalAmount => $state.composableBuilder(
      column: $state.table.totalAmount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get deliveryDetails => $state.composableBuilder(
      column: $state.table.deliveryDetails,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get status => $state.composableBuilder(
      column: $state.table.status,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get orderTime => $state.composableBuilder(
      column: $state.table.orderTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get estimatedDeliveryTime =>
      $state.composableBuilder(
          column: $state.table.estimatedDeliveryTime,
          builder: (column, joinBuilders) =>
              ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$OrderTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrderTableTable,
    OrderEntity,
    $$OrderTableTableFilterComposer,
    $$OrderTableTableOrderingComposer,
    $$OrderTableTableCreateCompanionBuilder,
    $$OrderTableTableUpdateCompanionBuilder,
    (OrderEntity, BaseReferences<_$AppDatabase, $OrderTableTable, OrderEntity>),
    OrderEntity,
    PrefetchHooks Function()> {
  $$OrderTableTableTableManager(_$AppDatabase db, $OrderTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$OrderTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$OrderTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> orderId = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<List<CartProductModel>> products = const Value.absent(),
            Value<double> totalAmount = const Value.absent(),
            Value<DeliveryModel> deliveryDetails = const Value.absent(),
            Value<OrderStatus> status = const Value.absent(),
            Value<DateTime> orderTime = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<DateTime> estimatedDeliveryTime = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrderTableCompanion(
            orderId: orderId,
            userId: userId,
            products: products,
            totalAmount: totalAmount,
            deliveryDetails: deliveryDetails,
            status: status,
            orderTime: orderTime,
            updatedAt: updatedAt,
            estimatedDeliveryTime: estimatedDeliveryTime,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String orderId,
            required String userId,
            required List<CartProductModel> products,
            required double totalAmount,
            required DeliveryModel deliveryDetails,
            required OrderStatus status,
            required DateTime orderTime,
            required DateTime updatedAt,
            required DateTime estimatedDeliveryTime,
            Value<int> rowid = const Value.absent(),
          }) =>
              OrderTableCompanion.insert(
            orderId: orderId,
            userId: userId,
            products: products,
            totalAmount: totalAmount,
            deliveryDetails: deliveryDetails,
            status: status,
            orderTime: orderTime,
            updatedAt: updatedAt,
            estimatedDeliveryTime: estimatedDeliveryTime,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$OrderTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OrderTableTable,
    OrderEntity,
    $$OrderTableTableFilterComposer,
    $$OrderTableTableOrderingComposer,
    $$OrderTableTableCreateCompanionBuilder,
    $$OrderTableTableUpdateCompanionBuilder,
    (OrderEntity, BaseReferences<_$AppDatabase, $OrderTableTable, OrderEntity>),
    OrderEntity,
    PrefetchHooks Function()>;
typedef $$CategoryTableTableCreateCompanionBuilder = CategoryTableCompanion
    Function({
  Value<int> categoryId,
  required String name,
  required String image,
});
typedef $$CategoryTableTableUpdateCompanionBuilder = CategoryTableCompanion
    Function({
  Value<int> categoryId,
  Value<String> name,
  Value<String> image,
});

class $$CategoryTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableFilterComposer(super.$state);
  ColumnFilters<int> get categoryId => $state.composableBuilder(
      column: $state.table.categoryId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CategoryTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get categoryId => $state.composableBuilder(
      column: $state.table.categoryId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CategoryTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoryTableTable,
    CategoryEntity,
    $$CategoryTableTableFilterComposer,
    $$CategoryTableTableOrderingComposer,
    $$CategoryTableTableCreateCompanionBuilder,
    $$CategoryTableTableUpdateCompanionBuilder,
    (
      CategoryEntity,
      BaseReferences<_$AppDatabase, $CategoryTableTable, CategoryEntity>
    ),
    CategoryEntity,
    PrefetchHooks Function()> {
  $$CategoryTableTableTableManager(_$AppDatabase db, $CategoryTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CategoryTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CategoryTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> categoryId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> image = const Value.absent(),
          }) =>
              CategoryTableCompanion(
            categoryId: categoryId,
            name: name,
            image: image,
          ),
          createCompanionCallback: ({
            Value<int> categoryId = const Value.absent(),
            required String name,
            required String image,
          }) =>
              CategoryTableCompanion.insert(
            categoryId: categoryId,
            name: name,
            image: image,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CategoryTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoryTableTable,
    CategoryEntity,
    $$CategoryTableTableFilterComposer,
    $$CategoryTableTableOrderingComposer,
    $$CategoryTableTableCreateCompanionBuilder,
    $$CategoryTableTableUpdateCompanionBuilder,
    (
      CategoryEntity,
      BaseReferences<_$AppDatabase, $CategoryTableTable, CategoryEntity>
    ),
    CategoryEntity,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserTableTableTableManager get userTable =>
      $$UserTableTableTableManager(_db, _db.userTable);
  $$AddressTableTableTableManager get addressTable =>
      $$AddressTableTableTableManager(_db, _db.addressTable);
  $$ProductTableTableTableManager get productTable =>
      $$ProductTableTableTableManager(_db, _db.productTable);
  $$CartProductTableTableTableManager get cartProductTable =>
      $$CartProductTableTableTableManager(_db, _db.cartProductTable);
  $$DiscountTableTableTableManager get discountTable =>
      $$DiscountTableTableTableManager(_db, _db.discountTable);
  $$CartTableTableTableManager get cartTable =>
      $$CartTableTableTableManager(_db, _db.cartTable);
  $$PreferenceTableTableTableManager get preferenceTable =>
      $$PreferenceTableTableTableManager(_db, _db.preferenceTable);
  $$OrderTableTableTableManager get orderTable =>
      $$OrderTableTableTableManager(_db, _db.orderTable);
  $$CategoryTableTableTableManager get categoryTable =>
      $$CategoryTableTableTableManager(_db, _db.categoryTable);
}
