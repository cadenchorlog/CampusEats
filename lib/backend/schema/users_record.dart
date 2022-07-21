import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'CardNumber')
  double get cardNumber;

  @nullable
  @BuiltValueField(wireName: 'CardName')
  String get cardName;

  @nullable
  @BuiltValueField(wireName: 'CVV')
  int get cvv;

  @nullable
  @BuiltValueField(wireName: 'CardZIP')
  int get cardZIP;

  @nullable
  @BuiltValueField(wireName: 'CardEXP')
  int get cardEXP;

  @nullable
  @BuiltValueField(wireName: 'Address')
  String get address;

  @nullable
  @BuiltValueField(wireName: 'AddressCity')
  String get addressCity;

  @nullable
  @BuiltValueField(wireName: 'AddressState')
  String get addressState;

  @nullable
  @BuiltValueField(wireName: 'AddressZip')
  String get addressZip;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..cardNumber = 0.0
    ..cardName = ''
    ..cvv = 0
    ..cardZIP = 0
    ..cardEXP = 0
    ..address = ''
    ..addressCity = ''
    ..addressState = ''
    ..addressZip = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  double cardNumber,
  String cardName,
  int cvv,
  int cardZIP,
  int cardEXP,
  String address,
  String addressCity,
  String addressState,
  String addressZip,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..cardNumber = cardNumber
          ..cardName = cardName
          ..cvv = cvv
          ..cardZIP = cardZIP
          ..cardEXP = cardEXP
          ..address = address
          ..addressCity = addressCity
          ..addressState = addressState
          ..addressZip = addressZip));
