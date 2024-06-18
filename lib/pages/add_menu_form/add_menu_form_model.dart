import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_menu_form_widget.dart' show AddMenuFormWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddMenuFormModel extends FlutterFlowModel<AddMenuFormWidget> {
  ///  Local state fields for this component.

  List<SizeStruct> menuSize = [];
  void addToMenuSize(SizeStruct item) => menuSize.add(item);
  void removeFromMenuSize(SizeStruct item) => menuSize.remove(item);
  void removeAtIndexFromMenuSize(int index) => menuSize.removeAt(index);
  void insertAtIndexInMenuSize(int index, SizeStruct item) =>
      menuSize.insert(index, item);
  void updateMenuSizeAtIndex(int index, Function(SizeStruct) updateFn) =>
      menuSize[index] = updateFn(menuSize[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for dishName widget.
  FocusNode? dishNameFocusNode;
  TextEditingController? dishNameTextController;
  String? Function(BuildContext, String?)? dishNameTextControllerValidator;
  // State field(s) for dishPrice widget.
  FocusNode? dishPriceFocusNode;
  TextEditingController? dishPriceTextController;
  String? Function(BuildContext, String?)? dishPriceTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for dishCategory widget.
  FormFieldController<List<String>>? dishCategoryValueController;
  List<String>? get dishCategoryValues => dishCategoryValueController?.value;
  set dishCategoryValues(List<String>? v) =>
      dishCategoryValueController?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dishNameFocusNode?.dispose();
    dishNameTextController?.dispose();

    dishPriceFocusNode?.dispose();
    dishPriceTextController?.dispose();

    expandableExpandableController.dispose();
    textFieldFocusNode1?.dispose();
    textController3?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();
  }
}
