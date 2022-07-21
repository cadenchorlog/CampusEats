import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'boise_restaurants_record.g.dart';

abstract class BoiseRestaurantsRecord
    implements Built<BoiseRestaurantsRecord, BoiseRestaurantsRecordBuilder> {
  static Serializer<BoiseRestaurantsRecord> get serializer =>
      _$boiseRestaurantsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Subway')
  int get subway;

  @nullable
  @BuiltValueField(wireName: 'PandaExpress')
  int get pandaExpress;

  @nullable
  @BuiltValueField(wireName: 'Chick-Fil-A')
  int get chickFilA;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BoiseRestaurantsRecordBuilder builder) =>
      builder
        ..subway = 0
        ..pandaExpress = 0
        ..chickFilA = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('boise_restaurants');

  static Stream<BoiseRestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BoiseRestaurantsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  BoiseRestaurantsRecord._();
  factory BoiseRestaurantsRecord(
          [void Function(BoiseRestaurantsRecordBuilder) updates]) =
      _$BoiseRestaurantsRecord;

  static BoiseRestaurantsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBoiseRestaurantsRecordData({
  int subway,
  int pandaExpress,
  int chickFilA,
}) =>
    serializers.toFirestore(
        BoiseRestaurantsRecord.serializer,
        BoiseRestaurantsRecord((b) => b
          ..subway = subway
          ..pandaExpress = pandaExpress
          ..chickFilA = chickFilA));
