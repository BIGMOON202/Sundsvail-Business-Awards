import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/components/program_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'program_widget.dart' show ProgramWidget;
import 'package:flutter/material.dart';

class ProgramModel extends FlutterFlowModel<ProgramWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuToggle component.
  late MenuToggleModel menuToggleModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for DrawerContent component.
  late DrawerContentModel drawerContentModel;
  // Model for ProgramComponent.
  late ProgramComponentModel programComponentModel;

  @override
  void initState(BuildContext context) {
    menuToggleModel = createModel(context, () => MenuToggleModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    drawerContentModel = createModel(context, () => DrawerContentModel());
    programComponentModel = createModel(context, () => ProgramComponentModel());
  }

  @override
  void dispose() {
    menuToggleModel.dispose();
    backButtonModel.dispose();
    drawerContentModel.dispose();
    programComponentModel.dispose();
  }
}
