// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SizeStruct extends FFFirebaseStruct {
  SizeStruct({
    String? sizeName,
    int? sizePrice,
    DocumentReference? menuRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sizeName = sizeName,
        _sizePrice = sizePrice,
        _menuRef = menuRef,
        super(firestoreUtilData);

  // "size_name" field.
  String? _sizeName;
  String get sizeName => _sizeName ?? '';
  set sizeName(String? val) => _sizeName = val;
  bool hasSizeName() => _sizeName != null;

  // "size_price" field.
  int? _sizePrice;
  int get sizePrice => _sizePrice ?? 0;
  set sizePrice(int? val) => _sizePrice = val;
  void incrementSizePrice(int amount) => _sizePrice = sizePrice + amount;
  bool hasSizePrice() => _sizePrice != null;

  // "Menu_Ref" field.
  DocumentReference? _menuRef;
  DocumentReference? get menuRef => _menuRef;
  set menuRef(DocumentReference? val) => _menuRef = val;
  bool hasMenuRef() => _menuRef != null;

  static SizeStruct fromMap(Map<String, dynamic> data) => SizeStruct(
        sizeName: data['size_name'] as String?,
        sizePrice: castToType<int>(data['size_price']),
        menuRef: data['Menu_Ref'] as DocumentReference?,
      );

  static SizeStruct? maybeFromMap(dynamic data) =>
      data is Map ? SizeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'size_name': _sizeName,
        'size_price': _sizePrice,
        'Menu_Ref': _menuRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'size_name': serializeParam(
          _sizeName,
          ParamType.String,
        ),
        'size_price': serializeParam(
          _sizePrice,
          ParamType.int,
        ),
        'Menu_Ref': serializeParam(
          _menuRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static SizeStruct fromSerializableMap(Map<String, dynamic> data) =>
      SizeStruct(
        sizeName: deserializeParam(
          data['size_name'],
          ParamType.String,
          false,
        ),
        sizePrice: deserializeParam(
          data['size_price'],
          ParamType.int,
          false,
        ),
        menuRef: deserializeParam(
          data['Menu_Ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Menu'],
        ),
      );

  @override
  String toString() => 'SizeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SizeStruct &&
        sizeName == other.sizeName &&
        sizePrice == other.sizePrice &&
        menuRef == other.menuRef;
  }

  @override
  int get hashCode => const ListEquality().hash([sizeName, sizePrice, menuRef]);
}

SizeStruct createSizeStruct({
  String? sizeName,
  int? sizePrice,
  DocumentReference? menuRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SizeStruct(
      sizeName: sizeName,
      sizePrice: sizePrice,
      menuRef: menuRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SizeStruct? updateSizeStruct(
  SizeStruct? size, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    size
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSizeStructData(
  Map<String, dynamic> firestoreData,
  SizeStruct? size,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (size == null) {
    return;
  }
  if (size.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && size.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sizeData = getSizeFirestoreData(size, forFieldValue);
  final nestedData = sizeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = size.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSizeFirestoreData(
  SizeStruct? size, [
  bool forFieldValue = false,
]) {
  if (size == null) {
    return {};
  }
  final firestoreData = mapToFirestore(size.toMap());

  // Add any Firestore field values
  size.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSizeListFirestoreData(
  List<SizeStruct>? sizes,
) =>
    sizes?.map((e) => getSizeFirestoreData(e, true)).toList() ?? [];
