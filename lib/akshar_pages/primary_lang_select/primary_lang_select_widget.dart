import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'primary_lang_select_model.dart';
export 'primary_lang_select_model.dart';

class PrimaryLangSelectWidget extends StatefulWidget {
  const PrimaryLangSelectWidget({super.key});

  @override
  State<PrimaryLangSelectWidget> createState() =>
      _PrimaryLangSelectWidgetState();
}

class _PrimaryLangSelectWidgetState extends State<PrimaryLangSelectWidget> {
  late PrimaryLangSelectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryLangSelectModel());
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.close_sharp,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'jhti67bi' /* Primary Language */,
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
                              'ttqbgt8g' /* Choose your first language */,
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
                              elevation: 10.0,
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
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: FlutterFlowRadioButton(
                                              options: [
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'si6sq1fc' /* हिंदी  (Hindi) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'b75cbdat' /* English */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kg3h10i6' /* ਪੰਜਾਬੀ  (Punjabi) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'sblubc1m' /* తెలుగు  (Telugu) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ndgd1kb7' /* বাংলা  (Bangla) */,
                                                ),
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3mirxjie' /* தமிழ்  (Tamil) */,
                                                )
                                              ].toList(),
                                              onChanged: (val) =>
                                                  setState(() {}),
                                              controller: _model
                                                      .radioButtonValueController ??=
                                                  FormFieldController<String>(
                                                      null),
                                              optionHeight: 80.0,
                                              optionWidth:
                                                  MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.8,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 22.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              selectedTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                              textPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(1.0, 1.0, 1.0, 1.0),
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
                            primaryLang: () {
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

                          context.pushNamed(
                            'SecondaryLangSelect',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.bottomToTop,
                              ),
                            },
                          );

                          FFAppState().primaryLang = valueOrDefault(
                              currentUserDocument?.primaryLang, '');
                        },
                        text: FFLocalizations.of(context).getText(
                          'ycugohtl' /* Next */,
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
                                    fontWeight: FontWeight.w800,
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
