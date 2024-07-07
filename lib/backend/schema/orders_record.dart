import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "orderTime" field.
  DateTime? _orderTime;
  DateTime? get orderTime => _orderTime;
  bool hasOrderTime() => _orderTime != null;

  // "orderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "orderPickedUp" field.
  bool? _orderPickedUp;
  bool get orderPickedUp => _orderPickedUp ?? false;
  bool hasOrderPickedUp() => _orderPickedUp != null;

  // "trackOrder" field.
  double? _trackOrder;
  double get trackOrder => _trackOrder ?? 0.0;
  bool hasTrackOrder() => _trackOrder != null;

  // "restaurantRef" field.
  DocumentReference? _restaurantRef;
  DocumentReference? get restaurantRef => _restaurantRef;
  bool hasRestaurantRef() => _restaurantRef != null;

  // "item" field.
  List<CartitemStruct>? _item;
  List<CartitemStruct> get item => _item ?? const [];
  bool hasItem() => _item != null;

  // "cartSum" field.
  double? _cartSum;
  double get cartSum => _cartSum ?? 0.0;
  bool hasCartSum() => _cartSum != null;

  // "orderMakingTime" field.
  int? _orderMakingTime;
  int get orderMakingTime => _orderMakingTime ?? 0;
  bool hasOrderMakingTime() => _orderMakingTime != null;

  // "offerAppliedCartSum" field.
  double? _offerAppliedCartSum;
  double get offerAppliedCartSum => _offerAppliedCartSum ?? 0.0;
  bool hasOfferAppliedCartSum() => _offerAppliedCartSum != null;

  void _initializeFields() {
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _orderTime = snapshotData['orderTime'] as DateTime?;
    _orderStatus = snapshotData['orderStatus'] as String?;
    _orderPickedUp = snapshotData['orderPickedUp'] as bool?;
    _trackOrder = castToType<double>(snapshotData['trackOrder']);
    _restaurantRef = snapshotData['restaurantRef'] as DocumentReference?;
    _item = getStructList(
      snapshotData['item'],
      CartitemStruct.fromMap,
    );
    _cartSum = castToType<double>(snapshotData['cartSum']);
    _orderMakingTime = castToType<int>(snapshotData['orderMakingTime']);
    _offerAppliedCartSum =
        castToType<double>(snapshotData['offerAppliedCartSum']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? userRef,
  DateTime? orderTime,
  String? orderStatus,
  bool? orderPickedUp,
  double? trackOrder,
  DocumentReference? restaurantRef,
  double? cartSum,
  int? orderMakingTime,
  double? offerAppliedCartSum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userRef': userRef,
      'orderTime': orderTime,
      'orderStatus': orderStatus,
      'orderPickedUp': orderPickedUp,
      'trackOrder': trackOrder,
      'restaurantRef': restaurantRef,
      'cartSum': cartSum,
      'orderMakingTime': orderMakingTime,
      'offerAppliedCartSum': offerAppliedCartSum,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userRef == e2?.userRef &&
        e1?.orderTime == e2?.orderTime &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.orderPickedUp == e2?.orderPickedUp &&
        e1?.trackOrder == e2?.trackOrder &&
        e1?.restaurantRef == e2?.restaurantRef &&
        listEquality.equals(e1?.item, e2?.item) &&
        e1?.cartSum == e2?.cartSum &&
        e1?.orderMakingTime == e2?.orderMakingTime &&
        e1?.offerAppliedCartSum == e2?.offerAppliedCartSum;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.userRef,
        e?.orderTime,
        e?.orderStatus,
        e?.orderPickedUp,
        e?.trackOrder,
        e?.restaurantRef,
        e?.item,
        e?.cartSum,
        e?.orderMakingTime,
        e?.offerAppliedCartSum
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
