import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuRecord extends FirestoreRecord {
  MenuRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "Type" field.
  List<String>? _type;
  List<String> get type => _type ?? const [];
  bool hasType() => _type != null;

  // "MenuSize" field.
  List<SizeStruct>? _menuSize;
  List<SizeStruct> get menuSize => _menuSize ?? const [];
  bool hasMenuSize() => _menuSize != null;

  // "RestaurantRef" field.
  DocumentReference? _restaurantRef;
  DocumentReference? get restaurantRef => _restaurantRef;
  bool hasRestaurantRef() => _restaurantRef != null;

  // "MenuCategoryRef" field.
  DocumentReference? _menuCategoryRef;
  DocumentReference? get menuCategoryRef => _menuCategoryRef;
  bool hasMenuCategoryRef() => _menuCategoryRef != null;

  // "isVeg" field.
  bool? _isVeg;
  bool get isVeg => _isVeg ?? false;
  bool hasIsVeg() => _isVeg != null;

  // "isNonveg" field.
  bool? _isNonveg;
  bool get isNonveg => _isNonveg ?? false;
  bool hasIsNonveg() => _isNonveg != null;

  // "inStock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  bool hasInStock() => _inStock != null;

  // "menuImage" field.
  String? _menuImage;
  String get menuImage => _menuImage ?? '';
  bool hasMenuImage() => _menuImage != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _price = castToType<int>(snapshotData['Price']);
    _type = getDataList(snapshotData['Type']);
    _menuSize = getStructList(
      snapshotData['MenuSize'],
      SizeStruct.fromMap,
    );
    _restaurantRef = snapshotData['RestaurantRef'] as DocumentReference?;
    _menuCategoryRef = snapshotData['MenuCategoryRef'] as DocumentReference?;
    _isVeg = snapshotData['isVeg'] as bool?;
    _isNonveg = snapshotData['isNonveg'] as bool?;
    _inStock = snapshotData['inStock'] as bool?;
    _menuImage = snapshotData['menuImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Menu');

  static Stream<MenuRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuRecord.fromSnapshot(s));

  static Future<MenuRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuRecord.fromSnapshot(s));

  static MenuRecord fromSnapshot(DocumentSnapshot snapshot) => MenuRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuRecordData({
  String? name,
  int? price,
  DocumentReference? restaurantRef,
  DocumentReference? menuCategoryRef,
  bool? isVeg,
  bool? isNonveg,
  bool? inStock,
  String? menuImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Price': price,
      'RestaurantRef': restaurantRef,
      'MenuCategoryRef': menuCategoryRef,
      'isVeg': isVeg,
      'isNonveg': isNonveg,
      'inStock': inStock,
      'menuImage': menuImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuRecordDocumentEquality implements Equality<MenuRecord> {
  const MenuRecordDocumentEquality();

  @override
  bool equals(MenuRecord? e1, MenuRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        listEquality.equals(e1?.type, e2?.type) &&
        listEquality.equals(e1?.menuSize, e2?.menuSize) &&
        e1?.restaurantRef == e2?.restaurantRef &&
        e1?.menuCategoryRef == e2?.menuCategoryRef &&
        e1?.isVeg == e2?.isVeg &&
        e1?.isNonveg == e2?.isNonveg &&
        e1?.inStock == e2?.inStock &&
        e1?.menuImage == e2?.menuImage;
  }

  @override
  int hash(MenuRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.type,
        e?.menuSize,
        e?.restaurantRef,
        e?.menuCategoryRef,
        e?.isVeg,
        e?.isNonveg,
        e?.inStock,
        e?.menuImage
      ]);

  @override
  bool isValidKey(Object? o) => o is MenuRecord;
}
