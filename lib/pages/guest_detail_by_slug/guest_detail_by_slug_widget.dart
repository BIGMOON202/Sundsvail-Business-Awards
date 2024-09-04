import '/backend/api_requests/api_calls.dart';
import '/components/back_button_widget.dart';
import '/components/drawer_content_widget.dart';
import '/components/guest_detail_component_widget.dart';
import '/components/menu_toggle_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'guest_detail_by_slug_model.dart';
export 'guest_detail_by_slug_model.dart';

class GuestDetailBySlugWidget extends StatefulWidget {
  const GuestDetailBySlugWidget({
    super.key,
    required this.guestSlug,
  });

  final String? guestSlug;

  @override
  State<GuestDetailBySlugWidget> createState() =>
      _GuestDetailBySlugWidgetState();
}

class _GuestDetailBySlugWidgetState extends State<GuestDetailBySlugWidget> {
  late GuestDetailBySlugModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestDetailBySlugModel());

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
      future: GetSpecificGuestCall.call(
        slug: widget.guestSlug,
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
        final guestDetailBySlugGetSpecificGuestResponse = snapshot.data!;

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
              child: SingleChildScrollView(
                child: Column(
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
                            if (GetSpecificGuestCall.guest(
                                  guestDetailBySlugGetSpecificGuestResponse
                                      .jsonBody,
                                ) !=
                                null)
                              wrapWithModel(
                                model: _model.guestDetailComponentModel,
                                updateCallback: () => setState(() {}),
                                child: GuestDetailComponentWidget(
                                  guestObject: GetSpecificGuestCall.guest(
                                    guestDetailBySlugGetSpecificGuestResponse
                                        .jsonBody,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
