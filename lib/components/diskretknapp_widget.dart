import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'diskretknapp_model.dart';
export 'diskretknapp_model.dart';

class DiskretknappWidget extends StatefulWidget {
  const DiskretknappWidget({super.key});

  @override
  State<DiskretknappWidget> createState() => _DiskretknappWidgetState();
}

class _DiskretknappWidgetState extends State<DiskretknappWidget> {
  late DiskretknappModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiskretknappModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Visa biljett',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Apercu',
                    color: FlutterFlowTheme.of(context).primary,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 1.0, 0.0, 0.0),
              child: Icon(
                Icons.arrow_circle_right_outlined,
                color: FlutterFlowTheme.of(context).primary,
                size: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
