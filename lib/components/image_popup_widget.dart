import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_popup_model.dart';
export 'image_popup_model.dart';

class ImagePopupWidget extends StatefulWidget {
  const ImagePopupWidget({
    super.key,
    required this.imageUrl,
  });

  final String? imageUrl;

  @override
  State<ImagePopupWidget> createState() => _ImagePopupWidgetState();
}

class _ImagePopupWidgetState extends State<ImagePopupWidget> {
  late ImagePopupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagePopupModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Image.network(
        widget.imageUrl!,
        width: 300.0,
        height: 300.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
