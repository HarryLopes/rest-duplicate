import '/flutter_flow/flutter_flow_util.dart';
import 'dish_details_widget.dart' show DishDetailsWidget;
import 'package:flutter/material.dart';

class DishDetailsModel extends FlutterFlowModel<DishDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
