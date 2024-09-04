import '/flutter_flow/flutter_flow_util.dart';
import 'angebiljett_i_d_widget.dart' show AngebiljettIDWidget;
import 'package:flutter/material.dart';

class AngebiljettIDModel extends FlutterFlowModel<AngebiljettIDWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
