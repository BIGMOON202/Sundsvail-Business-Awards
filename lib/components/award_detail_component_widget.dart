import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'award_detail_component_model.dart';
export 'award_detail_component_model.dart';

class AwardDetailComponentWidget extends StatefulWidget {
  const AwardDetailComponentWidget({
    super.key,
    this.awardObject,
  });

  final dynamic awardObject;

  @override
  State<AwardDetailComponentWidget> createState() =>
      _AwardDetailComponentWidgetState();
}

class _AwardDetailComponentWidgetState
    extends State<AwardDetailComponentWidget> {
  late AwardDetailComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AwardDetailComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 22.0, 20.0, 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    getJsonField(
                      widget.awardObject,
                      r'''$.award_name''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Apercu',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Text(
                    getJsonField(
                      widget.awardObject,
                      r'''$.prispresentation''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Apercu',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      getJsonField(
                        widget.awardObject,
                        r'''$.prisvardsorganisationer_headline''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Apercu',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  if ((List<String> nominerade) {
                    return ((nominerade != null) && (nominerade.isNotEmpty));
                  }((getJsonField(
                    widget.awardObject,
                    r'''$.nominerade''',
                    true,
                  ) as List)
                      .map<String>((s) => s.toString())
                      .toList()))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'DE NOMINERADE:',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Apercu',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if ((List<String> nominerade) {
            return nominerade != null;
          }((getJsonField(
            widget.awardObject,
            r'''$.nominerade''',
            true,
          ) as List)
              .map<String>((s) => s.toString())
              .toList()))
            Builder(
              builder: (context) {
                final nominerad = getJsonField(
                  widget.awardObject,
                  r'''$.nominerade''',
                ).toList();

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: nominerad.length,
                  itemBuilder: (context, nomineradIndex) {
                    final nomineradItem = nominerad[nomineradIndex];
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 500),
                                fadeOutDuration: const Duration(milliseconds: 500),
                                imageUrl: getJsonField(
                                  nomineradItem,
                                  r'''$.nominerad_bild''',
                                ).toString(),
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 125.0,
                                fit: BoxFit.contain,
                                alignment: const Alignment(-1.0, 0.0),
                              ),
                            ),
                          ),
                          if (getJsonField(
                                nomineradItem,
                                r'''$.nominerad_foretag''',
                              ) !=
                              null)
                            Text(
                              getJsonField(
                                nomineradItem,
                                r'''$.nominerad_foretag''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Apercu',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          if (getJsonField(
                                nomineradItem,
                                r'''$.nominerad_namn''',
                              ) !=
                              null)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 1.0, 0.0, 3.0),
                              child: Text(
                                getJsonField(
                                  nomineradItem,
                                  r'''$.nominerad_namn''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Apercu',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Text(
                              getJsonField(
                                nomineradItem,
                                r'''$.nominerad_presentation''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Apercu',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 3.0),
            child: Text(
              getJsonField(
                widget.awardObject,
                r'''$.prisvardsorganisationer_headline''',
              ).toString(),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Apercu',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
            child: Builder(
              builder: (context) {
                final prisvardsorganisation = getJsonField(
                  widget.awardObject,
                  r'''$.prisvardsorganisationer''',
                ).toList();

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: prisvardsorganisation.length,
                  itemBuilder: (context, prisvardsorganisationIndex) {
                    final prisvardsorganisationItem =
                        prisvardsorganisation[prisvardsorganisationIndex];
                    return Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getJsonField(
                              prisvardsorganisationItem,
                              r'''$.presentation''',
                            ).toString(),
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Apercu',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                          ),
                          if ((String? webbadress) {
                            return webbadress != '';
                          }(getJsonField(
                            prisvardsorganisationItem,
                            r'''$.webbadress''',
                          ).toString())
                              ? true
                              : false)
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await launchURL(getJsonField(
                                    prisvardsorganisationItem,
                                    r'''$.webbadress''',
                                  ).toString());
                                },
                                text: 'Webbplats',
                                icon: const FaIcon(
                                  FontAwesomeIcons.angleRight,
                                  size: 16.0,
                                ),
                                options: FFButtonOptions(
                                  height: 30.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Apercu',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  elevation: 0.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
