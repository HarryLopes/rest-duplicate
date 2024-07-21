import '/flutter_flow/flutter_flow_util.dart';
import 'contactus_widget.dart' show ContactusWidget;
import 'package:flutter/material.dart';

class ContactusModel extends FlutterFlowModel<ContactusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
