import '/flutter_flow/flutter_flow_util.dart';
import 'edit_restaurant_profile_widget.dart' show EditRestaurantProfileWidget;
import 'package:flutter/material.dart';

class EditRestaurantProfileModel
    extends FlutterFlowModel<EditRestaurantProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
