import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool editingOrg = false;

  bool editingLinkedin = false;

  bool editingUrl = false;

  bool editingPresentation = false;

  bool editingName = false;

  bool editingEmail = false;

  bool editingPhone = false;

  ///  State fields for stateful widgets in this page.

  // Model for MenuToggle component.
  late MenuToggleModel menuToggleModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Post profile name)] action in Button widget.
  ApiCallResponse? apiResultFieldName;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (Post profile field)] action in Button widget.
  ApiCallResponse? apiResultFieldOrg;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (Post profile field)] action in Button widget.
  ApiCallResponse? apiResultFieldLinkedin;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Stores action output result for [Backend Call - API (Post profile field)] action in Button widget.
  ApiCallResponse? apiResultFieldUrl;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Stores action output result for [Backend Call - API (Post profile field)] action in Button widget.
  ApiCallResponse? apiResultFieldEmail;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Backend Call - API (Post profile field)] action in Button widget.
  ApiCallResponse? apiResultFieldPhone;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // Stores action output result for [Backend Call - API (Toggle profile email)] action in Switch widget.
  ApiCallResponse? apiResultTogglePhone;
  // Stores action output result for [Backend Call - API (Toggle profile email)] action in Switch widget.
  ApiCallResponse? apiResultTogglePhoneOff;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Stores action output result for [Backend Call - API (Toggle profile email)] action in Switch widget.
  ApiCallResponse? apiResultToggleEmail;
  // Stores action output result for [Backend Call - API (Toggle profile email)] action in Switch widget.
  ApiCallResponse? apiResultToggleEmailOff;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Post profile photo upload)] action in Row widget.
  ApiCallResponse? apiResultProfilbild;
  // Stores action output result for [Backend Call - API (Post profile photo delete)] action in Row widget.
  ApiCallResponse? apiResultPhotoDelete;
  // Model for DrawerContent component.
  late DrawerContentModel drawerContentModel;

  @override
  void initState(BuildContext context) {
    menuToggleModel = createModel(context, () => MenuToggleModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    drawerContentModel = createModel(context, () => DrawerContentModel());
  }

  @override
  void dispose() {
    menuToggleModel.dispose();
    backButtonModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    drawerContentModel.dispose();
  }
}
