import '/components/award_detail_component_widget.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'award_detail_by_i_d_widget.dart' show AwardDetailByIDWidget;
import 'package:flutter/material.dart';

class AwardDetailByIDModel extends FlutterFlowModel<AwardDetailByIDWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuToggle component.
  late MenuToggleModel menuToggleModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for AwardDetailComponent component.
  late AwardDetailComponentModel awardDetailComponentModel;
  // Model for DrawerContent component.
  late DrawerContentModel drawerContentModel;

  @override
  void initState(BuildContext context) {
    menuToggleModel = createModel(context, () => MenuToggleModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    awardDetailComponentModel =
        createModel(context, () => AwardDetailComponentModel());
    drawerContentModel = createModel(context, () => DrawerContentModel());
  }

  @override
  void dispose() {
    menuToggleModel.dispose();
    backButtonModel.dispose();
    awardDetailComponentModel.dispose();
    drawerContentModel.dispose();
  }
}
