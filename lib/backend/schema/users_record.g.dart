// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardNumber;
    if (value != null) {
      result
        ..add('CardNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cardName;
    if (value != null) {
      result
        ..add('CardName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cvv;
    if (value != null) {
      result
        ..add('CVV')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cardZIP;
    if (value != null) {
      result
        ..add('CardZIP')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cardEXP;
    if (value != null) {
      result
        ..add('CardEXP')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressCity;
    if (value != null) {
      result
        ..add('AddressCity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressState;
    if (value != null) {
      result
        ..add('AddressState')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressZip;
    if (value != null) {
      result
        ..add('AddressZip')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CardNumber':
          result.cardNumber = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'CardName':
          result.cardName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'CVV':
          result.cvv = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'CardZIP':
          result.cardZIP = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'CardEXP':
          result.cardEXP = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'AddressCity':
          result.addressCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'AddressState':
          result.addressState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'AddressZip':
          result.addressZip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final double cardNumber;
  @override
  final String cardName;
  @override
  final int cvv;
  @override
  final int cardZIP;
  @override
  final int cardEXP;
  @override
  final String address;
  @override
  final String addressCity;
  @override
  final String addressState;
  @override
  final String addressZip;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.cardNumber,
      this.cardName,
      this.cvv,
      this.cardZIP,
      this.cardEXP,
      this.address,
      this.addressCity,
      this.addressState,
      this.addressZip,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        cardNumber == other.cardNumber &&
        cardName == other.cardName &&
        cvv == other.cvv &&
        cardZIP == other.cardZIP &&
        cardEXP == other.cardEXP &&
        address == other.address &&
        addressCity == other.addressCity &&
        addressState == other.addressState &&
        addressZip == other.addressZip &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    email
                                                                        .hashCode),
                                                                displayName
                                                                    .hashCode),
                                                            photoUrl.hashCode),
                                                        uid.hashCode),
                                                    createdTime.hashCode),
                                                phoneNumber.hashCode),
                                            cardNumber.hashCode),
                                        cardName.hashCode),
                                    cvv.hashCode),
                                cardZIP.hashCode),
                            cardEXP.hashCode),
                        address.hashCode),
                    addressCity.hashCode),
                addressState.hashCode),
            addressZip.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('cardNumber', cardNumber)
          ..add('cardName', cardName)
          ..add('cvv', cvv)
          ..add('cardZIP', cardZIP)
          ..add('cardEXP', cardEXP)
          ..add('address', address)
          ..add('addressCity', addressCity)
          ..add('addressState', addressState)
          ..add('addressZip', addressZip)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  double _cardNumber;
  double get cardNumber => _$this._cardNumber;
  set cardNumber(double cardNumber) => _$this._cardNumber = cardNumber;

  String _cardName;
  String get cardName => _$this._cardName;
  set cardName(String cardName) => _$this._cardName = cardName;

  int _cvv;
  int get cvv => _$this._cvv;
  set cvv(int cvv) => _$this._cvv = cvv;

  int _cardZIP;
  int get cardZIP => _$this._cardZIP;
  set cardZIP(int cardZIP) => _$this._cardZIP = cardZIP;

  int _cardEXP;
  int get cardEXP => _$this._cardEXP;
  set cardEXP(int cardEXP) => _$this._cardEXP = cardEXP;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _addressCity;
  String get addressCity => _$this._addressCity;
  set addressCity(String addressCity) => _$this._addressCity = addressCity;

  String _addressState;
  String get addressState => _$this._addressState;
  set addressState(String addressState) => _$this._addressState = addressState;

  String _addressZip;
  String get addressZip => _$this._addressZip;
  set addressZip(String addressZip) => _$this._addressZip = addressZip;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _cardNumber = $v.cardNumber;
      _cardName = $v.cardName;
      _cvv = $v.cvv;
      _cardZIP = $v.cardZIP;
      _cardEXP = $v.cardEXP;
      _address = $v.address;
      _addressCity = $v.addressCity;
      _addressState = $v.addressState;
      _addressZip = $v.addressZip;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            cardNumber: cardNumber,
            cardName: cardName,
            cvv: cvv,
            cardZIP: cardZIP,
            cardEXP: cardEXP,
            address: address,
            addressCity: addressCity,
            addressState: addressState,
            addressZip: addressZip,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
