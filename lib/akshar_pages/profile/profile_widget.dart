import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'profile_model.dart';
export 'profile_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({
    super.key,
    required this.userName,
    required this.email,
    required this.pic,
    required this.referenc,
    required this.about,
    required this.primaryLan,
    required this.secondLan,
  });

  final String? userName;
  final String? email;
  final String? pic;
  final UsersRecord? referenc;
  final String? about;
  final String? primaryLan;
  final String? secondLan;

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
                child: Stack(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Image.network(
                          widget.pic!,
                          width: MediaQuery.sizeOf(context).width,
                          height: MediaQuery.sizeOf(context).height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 44.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x520E151B),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 8.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  context.pop();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: ClipRRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 4.0,
                            sigmaY: 10.0,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 200.0,
                            decoration: const BoxDecoration(
                              color: Color(0x801D2429),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 15.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          widget.userName!,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 26.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 1.0, 0.0),
                                              child: Text(
                                                widget.primaryLan!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                widget.secondLan!,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 8.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            widget.email!,
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Text(
                                            widget.about!,
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  fontSize: 28.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                          ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
