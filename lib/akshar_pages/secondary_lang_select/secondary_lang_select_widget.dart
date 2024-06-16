import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'secondary_lang_select_model.dart';
export 'secondary_lang_select_model.dart';

class SecondaryLangSelectWidget extends StatefulWidget {
  const SecondaryLangSelectWidget({super.key});

  @override
  State<SecondaryLangSelectWidget> createState() =>
      _SecondaryLangSelectWidgetState();
}

class _SecondaryLangSelectWidgetState extends State<SecondaryLangSelectWidget> {
  late SecondaryLangSelectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecondaryLangSelectModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '8iv5lwgt' /* Secondary Language */,
            ),
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).primary,
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: const [],
          centerTitle: true,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF43C6AC), Color(0xFFF8FFAE)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'mzpnykx3' /* Choose your Second Language */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: const Color(0xFFCA2C36),
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 28.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 8.0, 8.0, 8.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: FlutterFlowRadioButton(
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'bfb87dyv' /* हिंदी  (Hindi) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wemzo5kg' /* English */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4rl35436' /* ਪੰਜਾਬੀ  (Punjabi) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2r2hl9ic' /* తెలుగు  (Telugu) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'osktjm8s' /* বাংলা  (Bangla) */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hvr8u2p0' /* தமிழ்  (Tamil) */,
                                              )
                                            ].toList(),
                                            onChanged: (val) => setState(() {}),
                                            controller: _model
                                                    .radioButtonValueController ??=
                                                FormFieldController<String>(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                              '53dajhuh' /* English */,
                                            )),
                                            optionHeight: 80.0,
                                            optionWidth:
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.8,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      fontSize: 22.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                            selectedTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      fontSize: 24.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                            textPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    1.0, 1.0, 1.0, 1.0),
                                            buttonPosition:
                                                RadioButtonPosition.left,
                                            direction: Axis.vertical,
                                            radioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveRadioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            toggleable: false,
                                            horizontalAlignment:
                                                WrapAlignment.start,
                                            verticalAlignment:
                                                WrapCrossAlignment.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          await currentUserReference!
                              .update(createUsersRecordData(
                            secondaryLang: () {
                              if (_model.radioButtonValue == 'हिंदी  (Hindi)') {
                                return 'hi';
                              } else if (_model.radioButtonValue ==
                                  'ਪੰਜਾਬੀ  (Punjabi)') {
                                return 'pa';
                              } else if (_model.radioButtonValue ==
                                  'తెలుగు  (Telugu)') {
                                return 'te';
                              } else if (_model.radioButtonValue ==
                                  'বাংলা  (Bangla)') {
                                return 'ba';
                              } else if (_model.radioButtonValue ==
                                  'தமிழ்  (Tamil)') {
                                return 'ta';
                              } else {
                                return 'en';
                              }
                            }(),
                          ));
                          if (valueOrDefault(
                                  currentUserDocument?.primaryLang, '') !=
                              valueOrDefault(
                                  currentUserDocument?.secondaryLang, '')) {
                            context.pushNamed(
                              'HomePage',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                ),
                              },
                            );
                          } else {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Both Primary and Secondary languages can\'t be same',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 1200),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }
                        },
                        text: FFLocalizations.of(context).getText(
                          'ugwp8dt0' /* Next */,
                        ),
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.75,
                          height: 45.0,
                          padding: const EdgeInsets.all(16.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
