import '/components/back_button_widget.dart';
import '/components/image_popup_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'program_component_model.dart';
export 'program_component_model.dart';

class ProgramComponentWidget extends StatefulWidget {
  const ProgramComponentWidget({
    super.key,
    required this.steps,
  });

  final dynamic steps;

  @override
  State<ProgramComponentWidget> createState() => _ProgramComponentWidgetState();
}

class _ProgramComponentWidgetState extends State<ProgramComponentWidget> {
  late ProgramComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final block = widget.steps!.toList();
        if (block.isEmpty) {
          return const BackButtonWidget();
        }

        return ListView.builder(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: block.length,
          itemBuilder: (context, blockIndex) {
            final blockItem = block[blockIndex];
            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (false)
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 22.0, 20.0, 0.0),
                    child: Text(
                      getJsonField(
                        blockItem,
                        r'''$.type''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Apercu',
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                if ((String type) {
                  return type == "start_av_tidslinje";
                }(getJsonField(
                  blockItem,
                  r'''$.type''',
                ).toString()))
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.none,
                          alignment: const AlignmentDirectional(-1.0, 1.0),
                          image: Image.asset(
                            'assets/images/tom-linje-8px.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 0.0, 0.0),
                        child: Container(
                          height: 22.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.none,
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              image: Image.asset(
                                'assets/images/efter-servering.png',
                              ).image,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if ((String type) {
                  return type == "underevent";
                }(getJsonField(
                  blockItem,
                  r'''$.type''',
                ).toString()))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 0.0, 4.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            getJsonField(
                              blockItem,
                              r'''$.rubrik''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Apercu',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            getJsonField(
                              blockItem,
                              r'''$.text''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Apercu',
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if ((String type) {
                  return type == "allman_programpunkt";
                }(getJsonField(
                  blockItem,
                  r'''$.type''',
                ).toString()))
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.none,
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        image: Image.asset(
                          'assets/images/programpunkt.png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(36.0, 5.0, 15.0, 5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getJsonField(
                              blockItem,
                              r'''$.rubrik''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Apercu',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if ((String type) {
                  return type == "prisutdelning";
                }(getJsonField(
                  blockItem,
                  r'''$.type''',
                ).toString()))
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'AwardDetailByID',
                        queryParameters: {
                          'awardID': serializeParam(
                            getJsonField(
                              blockItem,
                              r'''$.pris_id''',
                            ),
                            ParamType.int,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.none,
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          image: Image.asset(
                            'assets/images/programpunkt.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            36.0, 3.0, 15.0, 3.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                getJsonField(
                                  blockItem,
                                  r'''$.pris_namn''',
                                ).toString(),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Apercu',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 15.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'INFO',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Apercu',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 13.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                if ((String type) {
                  return type == "servering";
                }(getJsonField(
                  blockItem,
                  r'''$.type''',
                ).toString()))
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: ImagePopupWidget(
                                imageUrl: getJsonField(
                                  blockItem,
                                  r'''$.menybild''',
                                ).toString(),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.none,
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            image: Image.asset(
                              'assets/images/tom-linje-runt-servering.png',
                            ).image,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              21.0, 10.0, 0.0, 0.0),
                          child: Container(
                            height: 80.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.none,
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                image: Image.asset(
                                  'assets/images/full-servering.png',
                                ).image,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 11.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  if ((String? menybild) {
                                    return menybild != null;
                                  }(getJsonField(
                                    blockItem,
                                    r'''$.menybild''',
                                  ).toString()))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'VISA',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Apercu',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      getJsonField(
                                        blockItem,
                                        r'''$.serveringens_namn''',
                                      ).toString(),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Apercu',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  if ((String? menybild) {
                                    return menybild != null;
                                  }(getJsonField(
                                    blockItem,
                                    r'''$.menybild''',
                                  ).toString()))
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'VISA',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Apercu',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Icon(
                                            Icons.chevron_right,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if ((String type) {
                  return type == "slut_av_tidslinje";
                }(getJsonField(
                  blockItem,
                  r'''$.type''',
                ).toString()))
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.none,
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        image: Image.asset(
                          'assets/images/tom-linje-8px.png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(21.0, 0.0, 0.0, 0.0),
                      child: Container(
                        height: 22.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.none,
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            image: Image.asset(
                              'assets/images/innan-servering.png',
                            ).image,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }
}
