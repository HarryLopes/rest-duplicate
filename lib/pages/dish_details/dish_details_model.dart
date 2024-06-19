import '/flutter_flow/flutter_flow_util.dart';
import 'dish_details_widget.dart' show DishDetailsWidget;
import 'package:flutter/material.dart';

class DishDetailsModel extends FlutterFlowModel<DishDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
