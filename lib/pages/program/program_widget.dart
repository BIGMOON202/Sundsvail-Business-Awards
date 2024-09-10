import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/components/program_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'program_model.dart';
export 'program_model.dart';

class ProgramWidget extends StatefulWidget {
  const ProgramWidget({super.key});

  @override
  State<ProgramWidget> createState() => _ProgramWidgetState();
}

class _ProgramWidgetState extends State<ProgramWidget> {
  late ProgramModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              'GALAPROGRAM',
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 40.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: GetProgramCall.call(),
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
                    final columnGetProgramResponse = snapshot.data!;

                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (getJsonField(
                              columnGetProgramResponse.jsonBody,
                              r'''$.is_active''',
                            ) ==
                            1)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 20.0, 20.0),
                            child: Text(
                              'Galaprogrammet är inte offentliggjort ännu. Välkommen tillbaka närmare galan!',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Apercu',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        if (getJsonField(
                              columnGetProgramResponse.jsonBody,
                              r'''$.is_active''',
                            ) ==
                            2)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 30.0),
                            child: wrapWithModel(
                              model: _model.programComponentModel,
                              updateCallback: () => setState(() {}),
                              child: ProgramComponentWidget(
                                steps: GetProgramCall.steps(
                                  columnGetProgramResponse.jsonBody,
                                ),
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
