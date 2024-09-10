import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'guests_model.dart';
export 'guests_model.dart';

class GuestsWidget extends StatefulWidget {
  const GuestsWidget({super.key});

  @override
  State<GuestsWidget> createState() => _GuestsWidgetState();
}

class _GuestsWidgetState extends State<GuestsWidget> {
  late GuestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
            updateCallback: () => safeSetState(() {}),
            child: const DrawerContentWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: wrapWithModel(
            model: _model.backButtonModel,
            updateCallback: () => safeSetState(() {}),
            child: const BackButtonWidget(),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              'GÄSTLISTA',
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
                updateCallback: () => safeSetState(() {}),
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (FFAppState().ticketHash == '')
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'För att se gästlistan behöver du först koppla din biljett.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Apercu',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 7.0, 20.0, 7.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Ticket');
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Text(
                                    'Koppla biljett',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Apercu',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 11.0, 0.0, 10.0),
                                  child: Icon(
                                    Icons.arrow_circle_right_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
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
                ),
              if (FFAppState().ticketHash != '')
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 10.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.textController',
                      const Duration(milliseconds: 1000),
                      () async {
                        _model.searchTerm = _model.textController.text;
                        safeSetState(() {});
                      },
                    ),
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      labelText: 'Sök för- eller efternamn',
                      labelStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Apercu',
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Apercu',
                                color: FlutterFlowTheme.of(context).tertiary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 44.0, 0.0),
                      prefixIcon: Icon(
                        Icons.person_search_sharp,
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                      suffixIcon: _model.textController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                _model.textController?.clear();
                                _model.searchTerm = _model.textController.text;
                                safeSetState(() {});
                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.clear,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
                              ),
                            )
                          : null,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Apercu',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    keyboardType: TextInputType.name,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: FutureBuilder<ApiCallResponse>(
                    future: (_model.apiRequestCompleter ??=
                            Completer<ApiCallResponse>()
                              ..complete(GetGuestsCall.call(
                                ticketHash: FFAppState().ticketHash,
                              )))
                        .future,
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
                      final listViewGetGuestsResponse = snapshot.data!;

                      return Builder(
                        builder: (context) {
                          final guestGroup = GetGuestsCall.guestGroups(
                                listViewGetGuestsResponse.jsonBody,
                              )?.toList() ??
                              [];

                          return RefreshIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                            onRefresh: () async {
                              safeSetState(
                                  () => _model.apiRequestCompleter = null);
                              await _model.waitForApiRequestCompleted();
                            },
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: guestGroup.length,
                              itemBuilder: (context, guestGroupIndex) {
                                final guestGroupItem =
                                    guestGroup[guestGroupIndex];
                                return Visibility(
                                  visible: FFAppState().ticketHash != '',
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (_model.searchTerm == null ||
                                          _model.searchTerm == '')
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 14.0, 0.0, 5.0),
                                          child: Text(
                                            getJsonField(
                                              guestGroupItem,
                                              r'''$.first_letter''',
                                            ).toString().toUpperCase(),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Apercu',
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      Builder(
                                        builder: (context) {
                                          final guests = getJsonField(
                                            guestGroupItem,
                                            r'''$.guests''',
                                          ).toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: guests.length,
                                            itemBuilder:
                                                (context, guestsIndex) {
                                              final guestsItem =
                                                  guests[guestsIndex];
                                              return Visibility(
                                                visible: functions
                                                    .displayMatchingName(
                                                        getJsonField(
                                                          guestsItem,
                                                          r'''$.firstname''',
                                                        ).toString(),
                                                        getJsonField(
                                                          guestsItem,
                                                          r'''$.lastname''',
                                                        ).toString(),
                                                        _model.searchTerm),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (getJsonField(
                                                        guestsItem,
                                                        r'''$.has_info''',
                                                      )) {
                                                        context.pushNamed(
                                                          'GuestDetail',
                                                          queryParameters: {
                                                            'guestObject':
                                                                serializeParam(
                                                              guestsItem,
                                                              ParamType.JSON,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      }
                                                    },
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        if ((String? photo) {
                                                          return (photo !=
                                                                  null) &&
                                                              (photo != "");
                                                        }(getJsonField(
                                                          guestsItem,
                                                          r'''$.photo''',
                                                        ).toString()))
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  getJsonField(
                                                                    guestsItem,
                                                                    r'''$.photo''',
                                                                  ).toString(),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  errorBuilder: (context,
                                                                          error,
                                                                          stackTrace) =>
                                                                      Image
                                                                          .asset(
                                                                    'assets/images/error_image.png',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if ((String? photo,
                                                                bool hasInfo) {
                                                          return ((photo ==
                                                                      null) ||
                                                                  (photo ==
                                                                      "")) &&
                                                              (hasInfo == true);
                                                        }(
                                                            getJsonField(
                                                              guestsItem,
                                                              r'''$.photo''',
                                                            ).toString(),
                                                            getJsonField(
                                                              guestsItem,
                                                              r'''$.has_info''',
                                                            )))
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/avatar-rosa.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if ((String? photo,
                                                                bool hasInfo) {
                                                          return ((photo ==
                                                                      null) ||
                                                                  (photo ==
                                                                      "")) &&
                                                              (hasInfo ==
                                                                  false);
                                                        }(
                                                            getJsonField(
                                                              guestsItem,
                                                              r'''$.photo''',
                                                            ).toString(),
                                                            getJsonField(
                                                              guestsItem,
                                                              r'''$.has_info''',
                                                            )))
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/no-info.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            '${getJsonField(
                                                              guestsItem,
                                                              r'''$.firstname''',
                                                            ).toString()} ${getJsonField(
                                                              guestsItem,
                                                              r'''$.lastname''',
                                                            ).toString()}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Apercu',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
