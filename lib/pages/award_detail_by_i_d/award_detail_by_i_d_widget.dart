import '/backend/api_requests/api_calls.dart';
import '/components/award_detail_component_widget.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'award_detail_by_i_d_model.dart';
export 'award_detail_by_i_d_model.dart';

class AwardDetailByIDWidget extends StatefulWidget {
  const AwardDetailByIDWidget({
    super.key,
    required this.awardID,
  });

  final int? awardID;

  @override
  State<AwardDetailByIDWidget> createState() => _AwardDetailByIDWidgetState();
}

class _AwardDetailByIDWidgetState extends State<AwardDetailByIDWidget> {
  late AwardDetailByIDModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AwardDetailByIDModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.getPushPermission();
      await actions.pushNotiification();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetAwardCall.call(
        awardId: widget.awardID,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitThreeBounce(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        final awardDetailByIDGetAwardResponse = snapshot.data!;

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
              leading: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.goNamed('Awards');
                },
                child: wrapWithModel(
                  model: _model.backButtonModel,
                  updateCallback: () => setState(() {}),
                  child: const BackButtonWidget(),
                ),
              ),
              title: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'PRISER & NOMINERADE',
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
                    alignment: const Alignment(0.0, 1.0),
                  ),
                ),
              ),
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: wrapWithModel(
                model: _model.awardDetailComponentModel,
                updateCallback: () => setState(() {}),
                child: AwardDetailComponentWidget(
                  awardObject: GetAwardCall.award(
                    awardDetailByIDGetAwardResponse.jsonBody,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
