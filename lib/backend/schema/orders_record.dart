import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  LatLng? get source;

  LatLng? get destination;

  String? get distanceLeft;

  String? get timeLeft;

  String? get name;

  BuiltList<LatLng>? get driverPositions;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..distanceLeft = ''
    ..timeLeft = ''
    ..name = ''
    ..driverPositions = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  LatLng? source,
  LatLng? destination,
  String? distanceLeft,
  String? timeLeft,
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    OrdersRecord.serializer,
    OrdersRecord(
      (o) => o
        ..source = source
        ..destination = destination
        ..distanceLeft = distanceLeft
        ..timeLeft = timeLeft
        ..name = name
        ..driverPositions = null,
    ),
  );

  return firestoreData;
}
