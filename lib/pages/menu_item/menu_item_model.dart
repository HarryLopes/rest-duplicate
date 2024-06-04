import '/flutter_flow/flutter_flow_util.dart';
import 'menu_item_widget.dart' show MenuItemWidget;
import 'package:flutter/material.dart';

class MenuItemModel extends FlutterFlowModel<MenuItemWidget> {
  ///  Local state fields for this page.

  bool switchBoolean = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
