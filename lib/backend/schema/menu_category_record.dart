import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuCategoryRecord extends FirestoreRecord {
  MenuCategoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "C_name" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "restaurant_Ref" field.
  DocumentReference? _restaurantRef;
  DocumentReference? get restaurantRef => _restaurantRef;
  bool hasRestaurantRef() => _restaurantRef != null;

  void _initializeFields() {
    _cName = snapshotData['C_name'] as String?;
    _restaurantRef = snapshotData['restaurant_Ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MenuCategory');

  static Stream<MenuCategoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MenuCategoryRecord.fromSnapshot(s));

  static Future<MenuCategoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MenuCategoryRecord.fromSnapshot(s));

  static MenuCategoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MenuCategoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MenuCategoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MenuCategoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MenuCategoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MenuCategoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMenuCategoryRecordData({
  String? cName,
  DocumentReference? restaurantRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'C_name': cName,
      'restaurant_Ref': restaurantRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class MenuCategoryRecordDocumentEquality
    implements Equality<MenuCategoryRecord> {
  const MenuCategoryRecordDocumentEquality();

  @override
  bool equals(MenuCategoryRecord? e1, MenuCategoryRecord? e2) {
    return e1?.cName == e2?.cName && e1?.restaurantRef == e2?.restaurantRef;
  }

  @override
  int hash(MenuCategoryRecord? e) =>
      const ListEquality().hash([e?.cName, e?.restaurantRef]);

  @override
  bool isValidKey(Object? o) => o is MenuCategoryRecord;
}
