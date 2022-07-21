// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boise_restaurants_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BoiseRestaurantsRecord> _$boiseRestaurantsRecordSerializer =
    new _$BoiseRestaurantsRecordSerializer();

class _$BoiseRestaurantsRecordSerializer
    implements StructuredSerializer<BoiseRestaurantsRecord> {
  @override
  final Iterable<Type> types = const [
    BoiseRestaurantsRecord,
    _$BoiseRestaurantsRecord
  ];
  @override
  final String wireName = 'BoiseRestaurantsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BoiseRestaurantsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.subway;
    if (value != null) {
      result
        ..add('Subway')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pandaExpress;
    if (value != null) {
      result
        ..add('PandaExpress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.chickFilA;
    if (value != null) {
      result
        ..add('Chick-Fil-A')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  BoiseRestaurantsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BoiseRestaurantsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Subway':
          result.subway = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'PandaExpress':
          result.pandaExpress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Chick-Fil-A':
          result.chickFilA = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$BoiseRestaurantsRecord extends BoiseRestaurantsRecord {
  @override
  final int subway;
  @override
  final int pandaExpress;
  @override
  final int chickFilA;
  @override
  final DocumentReference<Object> reference;

  factory _$BoiseRestaurantsRecord(
          [void Function(BoiseRestaurantsRecordBuilder) updates]) =>
      (new BoiseRestaurantsRecordBuilder()..update(updates)).build();

  _$BoiseRestaurantsRecord._(
      {this.subway, this.pandaExpress, this.chickFilA, this.reference})
      : super._();

  @override
  BoiseRestaurantsRecord rebuild(
          void Function(BoiseRestaurantsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoiseRestaurantsRecordBuilder toBuilder() =>
      new BoiseRestaurantsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BoiseRestaurantsRecord &&
        subway == other.subway &&
        pandaExpress == other.pandaExpress &&
        chickFilA == other.chickFilA &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, subway.hashCode), pandaExpress.hashCode),
            chickFilA.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BoiseRestaurantsRecord')
          ..add('subway', subway)
          ..add('pandaExpress', pandaExpress)
          ..add('chickFilA', chickFilA)
          ..add('reference', reference))
        .toString();
  }
}

class BoiseRestaurantsRecordBuilder
    implements Builder<BoiseRestaurantsRecord, BoiseRestaurantsRecordBuilder> {
  _$BoiseRestaurantsRecord _$v;

  int _subway;
  int get subway => _$this._subway;
  set subway(int subway) => _$this._subway = subway;

  int _pandaExpress;
  int get pandaExpress => _$this._pandaExpress;
  set pandaExpress(int pandaExpress) => _$this._pandaExpress = pandaExpress;

  int _chickFilA;
  int get chickFilA => _$this._chickFilA;
  set chickFilA(int chickFilA) => _$this._chickFilA = chickFilA;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BoiseRestaurantsRecordBuilder() {
    BoiseRestaurantsRecord._initializeBuilder(this);
  }

  BoiseRestaurantsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subway = $v.subway;
      _pandaExpress = $v.pandaExpress;
      _chickFilA = $v.chickFilA;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BoiseRestaurantsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BoiseRestaurantsRecord;
  }

  @override
  void update(void Function(BoiseRestaurantsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BoiseRestaurantsRecord build() {
    final _$result = _$v ??
        new _$BoiseRestaurantsRecord._(
            subway: subway,
            pandaExpress: pandaExpress,
            chickFilA: chickFilA,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
