import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'modal_kopplad_model.dart';
export 'modal_kopplad_model.dart';

class ModalKoppladWidget extends StatefulWidget {
  const ModalKoppladWidget({super.key});

  @override
  State<ModalKoppladWidget> createState() => _ModalKoppladWidgetState();
}

class _ModalKoppladWidgetState extends State<ModalKoppladWidget> {
  late ModalKoppladModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalKoppladModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 30.0),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 34.0,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Din biljett är kopplad!',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Apercu',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 20.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
            child: Text(
              'Nu är din biljett sparad i appen, så du behöver inte ha med dig en utskriven biljett till galan. Tjusigt va!',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Apercu',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 15.0),
              child: FaIcon(
                FontAwesomeIcons.smile,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 34.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
            child: Text(
              'Skriv in dina kontaktuppgifter så kan andra gäster på galan enkelt komma i kontakt med dig eller få mer information om ditt företag eller arbetsgivare. Du kan också ladda upp en profilbild så andra gäster ser vem du är! När du uppdaterat din profil blir ditt namn valbart i gästlistan, och markeras med rosa.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Apercu',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 7.0, 20.0, 7.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);

                  context.pushNamed('Profile');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        'Uppdatera din profil',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Apercu',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 0.0, 5.0),
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 5.0),
              child: FaIcon(
                FontAwesomeIcons.ticketAlt,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 34.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
            child: Text(
              'Du kan alltid visa din biljett i appen, och även meddela om du har någon matallergi.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Apercu',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 7.0, 20.0, 7.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                      child: Text(
                        'Visa din biljett',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Apercu',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 6.0, 0.0, 5.0),
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
