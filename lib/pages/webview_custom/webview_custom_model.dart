import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'webview_custom_widget.dart' show WebviewCustomWidget;
import 'package:flutter/material.dart';

class WebviewCustomModel extends FlutterFlowModel<WebviewCustomWidget> {
  ///  Local state fields for this page.

  String? htmlcontent = 'initial html value';

  ///  State fields for stateful widgets in this page.

  // Model for MenuToggle component.
  late MenuToggleModel menuToggleModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
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
    drawerContentModel.dispose();
  }
}
