import '/flutter_flow/flutter_flow_util.dart';
import 'menu_category_page_widget.dart' show MenuCategoryPageWidget;
import 'package:flutter/material.dart';

class MenuCategoryPageModel extends FlutterFlowModel<MenuCategoryPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
