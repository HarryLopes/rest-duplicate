import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboardingpage_widget.dart' show OnboardingpageWidget;
import 'package:flutter/material.dart';

class OnboardingpageModel extends FlutterFlowModel<OnboardingpageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for restaurantName widget.
  FocusNode? restaurantNameFocusNode;
  TextEditingController? restaurantNameTextController;
  String? Function(BuildContext, String?)?
      restaurantNameTextControllerValidator;
  // State field(s) for restaurantcategory widget.
  FocusNode? restaurantcategoryFocusNode;
  TextEditingController? restaurantcategoryTextController;
  String? Function(BuildContext, String?)?
      restaurantcategoryTextControllerValidator;
  // State field(s) for restaurantphonenumber widget.
  FocusNode? restaurantphonenumberFocusNode;
  TextEditingController? restaurantphonenumberTextController;
  String? Function(BuildContext, String?)?
      restaurantphonenumberTextControllerValidator;
  // State field(s) for restaurantaddress widget.
  FocusNode? restaurantaddressFocusNode;
  TextEditingController? restaurantaddressTextController;
  String? Function(BuildContext, String?)?
      restaurantaddressTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for restaurantworkingdays widget.
  List<String>? restaurantworkingdaysValue;
  FormFieldController<List<String>>? restaurantworkingdaysValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  RestaurantsRecord? restaurantCreated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    restaurantNameFocusNode?.dispose();
    restaurantNameTextController?.dispose();

    restaurantcategoryFocusNode?.dispose();
    restaurantcategoryTextController?.dispose();

    restaurantphonenumberFocusNode?.dispose();
    restaurantphonenumberTextController?.dispose();

    restaurantaddressFocusNode?.dispose();
    restaurantaddressTextController?.dispose();
  }
}
