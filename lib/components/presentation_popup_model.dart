import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'presentation_popup_widget.dart' show PresentationPopupWidget;
import 'package:flutter/material.dart';

class PresentationPopupModel extends FlutterFlowModel<PresentationPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextFieldPresentation widget.
  FocusNode? textFieldPresentationFocusNode;
  TextEditingController? textFieldPresentationTextController;
  String? Function(BuildContext, String?)?
      textFieldPresentationTextControllerValidator;
  // Stores action output result for [Backend Call - API (Post profile field)] action in Button widget.
  ApiCallResponse? apiResultPresentation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldPresentationFocusNode?.dispose();
    textFieldPresentationTextController?.dispose();
  }
}
