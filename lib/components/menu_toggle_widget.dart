import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_toggle_model.dart';
export 'menu_toggle_model.dart';

class MenuToggleWidget extends StatefulWidget {
  const MenuToggleWidget({super.key});

  @override
  State<MenuToggleWidget> createState() => _MenuToggleWidgetState();
}

class _MenuToggleWidgetState extends State<MenuToggleWidget> {
  late MenuToggleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuToggleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderRadius: 20.0,
      borderWidth: 1.0,
      buttonSize: 40.0,
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 24.0,
      ),
      onPressed: () async {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
