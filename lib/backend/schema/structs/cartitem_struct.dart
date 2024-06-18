// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartitemStruct extends FFFirebaseStruct {
  CartitemStruct({
    int? quantity,
    SizeStruct? menuSize,
    DocumentReference? menuRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantity = quantity,
        _menuSize = menuSize,
        _menuRef = menuRef,
        super(firestoreUtilData);

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "menuSize" field.
  SizeStruct? _menuSize;
  SizeStruct get menuSize => _menuSize ?? SizeStruct();
  set menuSize(SizeStruct? val) => _menuSize = val;

  void updateMenuSize(Function(SizeStruct) updateFn) {
    updateFn(menuSize ??= SizeStruct());
  }

  bool hasMenuSize() => _menuSize != null;

  // "MenuRef" field.
  DocumentReference? _menuRef;
  DocumentReference? get menuRef => _menuRef;
  set menuRef(DocumentReference? val) => _menuRef = val;

  bool hasMenuRef() => _menuRef != null;

  static CartitemStruct fromMap(Map<String, dynamic> data) => CartitemStruct(
        quantity: castToType<int>(data['quantity']),
        menuSize: SizeStruct.maybeFromMap(data['menuSize']),
        menuRef: data['MenuRef'] as DocumentReference?,
      );

  static CartitemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartitemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'menuSize': _menuSize?.toMap(),
        'MenuRef': _menuRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'menuSize': serializeParam(
          _menuSize,
          ParamType.DataStruct,
        ),
        'MenuRef': serializeParam(
          _menuRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CartitemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartitemStruct(
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        menuSize: deserializeStructParam(
          data['menuSize'],
          ParamType.DataStruct,
          false,
          structBuilder: SizeStruct.fromSerializableMap,
        ),
        menuRef: deserializeParam(
          data['MenuRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Menu'],
        ),
      );

  @override
  String toString() => 'CartitemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartitemStruct &&
        quantity == other.quantity &&
        menuSize == other.menuSize &&
        menuRef == other.menuRef;
  }

  @override
  int get hashCode => const ListEquality().hash([quantity, menuSize, menuRef]);
}

CartitemStruct createCartitemStruct({
  int? quantity,
  SizeStruct? menuSize,
  DocumentReference? menuRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartitemStruct(
      quantity: quantity,
      menuSize: menuSize ?? (clearUnsetFields ? SizeStruct() : null),
      menuRef: menuRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartitemStruct? updateCartitemStruct(
  CartitemStruct? cartitem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartitem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartitemStructData(
  Map<String, dynamic> firestoreData,
  CartitemStruct? cartitem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartitem == null) {
    return;
  }
  if (cartitem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cartitem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartitemData = getCartitemFirestoreData(cartitem, forFieldValue);
  final nestedData = cartitemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cartitem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartitemFirestoreData(
  CartitemStruct? cartitem, [
  bool forFieldValue = false,
]) {
  if (cartitem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartitem.toMap());

  // Handle nested data for "menuSize" field.
  addSizeStructData(
    firestoreData,
    cartitem.hasMenuSize() ? cartitem.menuSize : null,
    'menuSize',
    forFieldValue,
  );

  // Add any Firestore field values
  cartitem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartitemListFirestoreData(
  List<CartitemStruct>? cartitems,
) =>
    cartitems?.map((e) => getCartitemFirestoreData(e, true)).toList() ?? [];
