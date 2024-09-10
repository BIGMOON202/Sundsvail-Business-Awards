import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/guest_detail_component_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'guest_detail_widget.dart' show GuestDetailWidget;
import 'package:flutter/material.dart';

class GuestDetailModel extends FlutterFlowModel<GuestDetailWidget> {
  ///  Local state fields for this page.

  String? searchTerm;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MenuToggle component.
  late MenuToggleModel menuToggleModel;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for GuestDetailComponent component.
  late GuestDetailComponentModel guestDetailComponentModel;
  // Model for DrawerContent component.
  late DrawerContentModel drawerContentModel;

  @override
  void initState(BuildContext context) {
    menuToggleModel = createModel(context, () => MenuToggleModel());
    backButtonModel = createModel(context, () => BackButtonModel());
    guestDetailComponentModel =
        createModel(context, () => GuestDetailComponentModel());
    drawerContentModel = createModel(context, () => DrawerContentModel());
  }

  @override
  void dispose() {
    menuToggleModel.dispose();
    backButtonModel.dispose();
    guestDetailComponentModel.dispose();
    drawerContentModel.dispose();
  }
}
