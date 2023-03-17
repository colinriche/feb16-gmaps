// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.source;
    if (value != null) {
      result
        ..add('source')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.destination;
    if (value != null) {
      result
        ..add('destination')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.distanceLeft;
    if (value != null) {
      result
        ..add('distanceLeft')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeLeft;
    if (value != null) {
      result
        ..add('timeLeft')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.driverPositions;
    if (value != null) {
      result
        ..add('driverPositions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(LatLng)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'source':
          result.source = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'destination':
          result.destination = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'distanceLeft':
          result.distanceLeft = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timeLeft':
          result.timeLeft = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'driverPositions':
          result.driverPositions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LatLng)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrdersRecord extends OrdersRecord {
  @override
  final LatLng? source;
  @override
  final LatLng? destination;
  @override
  final String? distanceLeft;
  @override
  final String? timeLeft;
  @override
  final String? name;
  @override
  final BuiltList<LatLng>? driverPositions;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder)? updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {this.source,
      this.destination,
      this.distanceLeft,
      this.timeLeft,
      this.name,
      this.driverPositions,
      this.ffRef})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        source == other.source &&
        destination == other.destination &&
        distanceLeft == other.distanceLeft &&
        timeLeft == other.timeLeft &&
        name == other.name &&
        driverPositions == other.driverPositions &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, source.hashCode), destination.hashCode),
                        distanceLeft.hashCode),
                    timeLeft.hashCode),
                name.hashCode),
            driverPositions.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('source', source)
          ..add('destination', destination)
          ..add('distanceLeft', distanceLeft)
          ..add('timeLeft', timeLeft)
          ..add('name', name)
          ..add('driverPositions', driverPositions)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord? _$v;

  LatLng? _source;
  LatLng? get source => _$this._source;
  set source(LatLng? source) => _$this._source = source;

  LatLng? _destination;
  LatLng? get destination => _$this._destination;
  set destination(LatLng? destination) => _$this._destination = destination;

  String? _distanceLeft;
  String? get distanceLeft => _$this._distanceLeft;
  set distanceLeft(String? distanceLeft) => _$this._distanceLeft = distanceLeft;

  String? _timeLeft;
  String? get timeLeft => _$this._timeLeft;
  set timeLeft(String? timeLeft) => _$this._timeLeft = timeLeft;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<LatLng>? _driverPositions;
  ListBuilder<LatLng> get driverPositions =>
      _$this._driverPositions ??= new ListBuilder<LatLng>();
  set driverPositions(ListBuilder<LatLng>? driverPositions) =>
      _$this._driverPositions = driverPositions;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source;
      _destination = $v.destination;
      _distanceLeft = $v.distanceLeft;
      _timeLeft = $v.timeLeft;
      _name = $v.name;
      _driverPositions = $v.driverPositions?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    _$OrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdersRecord._(
              source: source,
              destination: destination,
              distanceLeft: distanceLeft,
              timeLeft: timeLeft,
              name: name,
              driverPositions: _driverPositions?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'driverPositions';
        _driverPositions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
