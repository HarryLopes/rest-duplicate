import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestaurantsRecord extends FirestoreRecord {
  RestaurantsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "opening_time" field.
  DateTime? _openingTime;
  DateTime? get openingTime => _openingTime;
  bool hasOpeningTime() => _openingTime != null;

  // "closing_time" field.
  DateTime? _closingTime;
  DateTime? get closingTime => _closingTime;
  bool hasClosingTime() => _closingTime != null;

  // "working_days" field.
  List<String>? _workingDays;
  List<String> get workingDays => _workingDays ?? const [];
  bool hasWorkingDays() => _workingDays != null;

  // "restaurant_image" field.
  String? _restaurantImage;
  String get restaurantImage => _restaurantImage ?? '';
  bool hasRestaurantImage() => _restaurantImage != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "restaurant_id" field.
  DocumentReference? _restaurantId;
  DocumentReference? get restaurantId => _restaurantId;
  bool hasRestaurantId() => _restaurantId != null;

  // "is_restaurant_on" field.
  bool? _isRestaurantOn;
  bool get isRestaurantOn => _isRestaurantOn ?? false;
  bool hasIsRestaurantOn() => _isRestaurantOn != null;

  // "MenuRef" field.
  DocumentReference? _menuRef;
  DocumentReference? get menuRef => _menuRef;
  bool hasMenuRef() => _menuRef != null;

  // "MenuCategoryRef" field.
  DocumentReference? _menuCategoryRef;
  DocumentReference? get menuCategoryRef => _menuCategoryRef;
  bool hasMenuCategoryRef() => _menuCategoryRef != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _category = snapshotData['category'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _address = snapshotData['address'] as String?;
    _openingTime = snapshotData['opening_time'] as DateTime?;
    _closingTime = snapshotData['closing_time'] as DateTime?;
    _workingDays = getDataList(snapshotData['working_days']);
    _restaurantImage = snapshotData['restaurant_image'] as String?;
    _uid = snapshotData['uid'] as String?;
    _restaurantId = snapshotData['restaurant_id'] as DocumentReference?;
    _isRestaurantOn = snapshotData['is_restaurant_on'] as bool?;
    _menuRef = snapshotData['MenuRef'] as DocumentReference?;
    _menuCategoryRef = snapshotData['MenuCategoryRef'] as DocumentReference?;
    _rating = castToType<double>(snapshotData['rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestaurantsRecord.fromSnapshot(s));

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestaurantsRecord.fromSnapshot(s));

  static RestaurantsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestaurantsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestaurantsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestaurantsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestaurantsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestaurantsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestaurantsRecordData({
  String? name,
  String? category,
  String? phoneNumber,
  String? address,
  DateTime? openingTime,
  DateTime? closingTime,
  String? restaurantImage,
  String? uid,
  DocumentReference? restaurantId,
  bool? isRestaurantOn,
  DocumentReference? menuRef,
  DocumentReference? menuCategoryRef,
  double? rating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'category': category,
      'phone_number': phoneNumber,
      'address': address,
      'opening_time': openingTime,
      'closing_time': closingTime,
      'restaurant_image': restaurantImage,
      'uid': uid,
      'restaurant_id': restaurantId,
      'is_restaurant_on': isRestaurantOn,
      'MenuRef': menuRef,
      'MenuCategoryRef': menuCategoryRef,
      'rating': rating,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestaurantsRecordDocumentEquality implements Equality<RestaurantsRecord> {
  const RestaurantsRecordDocumentEquality();

  @override
  bool equals(RestaurantsRecord? e1, RestaurantsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.category == e2?.category &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.address == e2?.address &&
        e1?.openingTime == e2?.openingTime &&
        e1?.closingTime == e2?.closingTime &&
        listEquality.equals(e1?.workingDays, e2?.workingDays) &&
        e1?.restaurantImage == e2?.restaurantImage &&
        e1?.uid == e2?.uid &&
        e1?.restaurantId == e2?.restaurantId &&
        e1?.isRestaurantOn == e2?.isRestaurantOn &&
        e1?.menuRef == e2?.menuRef &&
        e1?.menuCategoryRef == e2?.menuCategoryRef &&
        e1?.rating == e2?.rating;
  }

  @override
  int hash(RestaurantsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.category,
        e?.phoneNumber,
        e?.address,
        e?.openingTime,
        e?.closingTime,
        e?.workingDays,
        e?.restaurantImage,
        e?.uid,
        e?.restaurantId,
        e?.isRestaurantOn,
        e?.menuRef,
        e?.menuCategoryRef,
        e?.rating
      ]);

  @override
  bool isValidKey(Object? o) => o is RestaurantsRecord;
}
