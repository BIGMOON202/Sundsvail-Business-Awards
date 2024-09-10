import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'appsponsor_model.dart';
export 'appsponsor_model.dart';

class AppsponsorWidget extends StatefulWidget {
  const AppsponsorWidget({super.key});

  @override
  State<AppsponsorWidget> createState() => _AppsponsorWidgetState();
}

class _AppsponsorWidgetState extends State<AppsponsorWidget> {
  late AppsponsorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppsponsorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerContentModel,
            updateCallback: () => setState(() {}),
            child: const DrawerContentWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: wrapWithModel(
            model: _model.backButtonModel,
            updateCallback: () => setState(() {}),
            child: const BackButtonWidget(),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'APPSPONSOR',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Apercu',
                    color: Colors.white,
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                    useGoogleFonts: false,
                  ),
            ),
          ),
          actions: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                scaffoldKey.currentState!.openDrawer();
              },
              child: wrapWithModel(
                model: _model.menuToggleModel,
                updateCallback: () => setState(() {}),
                child: const MenuToggleWidget(),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image.asset(
                'assets/images/header-line.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: GetSystemTextCall.call(
              text: 'appsponsor',
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitThreeBounce(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              final columnGetSystemTextResponse = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 20.0, 15.0),
                            child: Text(
                              getJsonField(
                                columnGetSystemTextResponse.jsonBody,
                                r'''$.headline''',
                              ).toString(),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Apercu',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Builder(
                              builder: (context) {
                                final row = getJsonField(
                                  columnGetSystemTextResponse.jsonBody,
                                  r'''$.text''',
                                ).toList();

                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      List.generate(row.length, (rowIndex) {
                                    final rowItem = row[rowIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 10.0),
                                      child: Text(
                                        rowItem.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Apercu',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (FFAppState().ticketHash != '')
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'GuestDetailBySlug',
                            queryParameters: {
                              'guestSlug': serializeParam(
                                'appsponsor',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Thomas Wistens profil',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Apercu',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await launchURL(
                            'https://www.autopilot.se/?utm_source=sbaapp');
                      },
                      text: 'Autopilot.se',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Apercu',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                    child: Text(
                      'Appversion 10 (build 3)\n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Apercu',
                            fontSize: 11.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
