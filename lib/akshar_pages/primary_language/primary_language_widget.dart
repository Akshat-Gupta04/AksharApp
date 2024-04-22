import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'primary_language_model.dart';
export 'primary_language_model.dart';

class PrimaryLanguageWidget extends StatefulWidget {
  const PrimaryLanguageWidget({super.key});

  @override
  State<PrimaryLanguageWidget> createState() => _PrimaryLanguageWidgetState();
}

class _PrimaryLanguageWidgetState extends State<PrimaryLanguageWidget> {
  late PrimaryLanguageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrimaryLanguageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'l4o57wmo' /* Choose your first languge */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 28.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowRadioButton(
                      options: [
                        FFLocalizations.of(context).getText(
                          'cfiwayms' /* हिंदी  (Hindi) */,
                        ),
                        FFLocalizations.of(context).getText(
                          'adxotwx9' /* English */,
                        ),
                        FFLocalizations.of(context).getText(
                          '12lqtcwq' /* ਪੰਜਾਬੀ  (Punjabi) */,
                        ),
                        FFLocalizations.of(context).getText(
                          '4nsvpwb5' /* తెలుగు  (Telugu) */,
                        ),
                        FFLocalizations.of(context).getText(
                          'y4jxiidi' /* বাংলা  (Bangla) */,
                        ),
                        FFLocalizations.of(context).getText(
                          'rpjuqw0j' /* தமிழ்  (Tamil) */,
                        )
                      ].toList(),
                      onChanged: (val) => setState(() {}),
                      controller: _model.radioButtonValueController ??=
                          FormFieldController<String>(
                              FFLocalizations.of(context).getText(
                        '0ck0cxdh' /* English */,
                      )),
                      optionHeight: 85.0,
                      optionWidth: MediaQuery.sizeOf(context).width * 0.8,
                      textStyle:
                          FlutterFlowTheme.of(context).labelLarge.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                      selectedTextStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 28.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                              ),
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor: FlutterFlowTheme.of(context).primary,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.center,
                    ),
                  ],
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
                  await currentUserReference!.update(createUsersRecordData(
                    primaryLang: () {
                      if (_model.radioButtonValue == 'हिंदी  (Hindi)') {
                        return 'hi';
                      } else if (_model.radioButtonValue ==
                          'ਪੰਜਾਬੀ  (Punjabi)') {
                        return 'pa';
                      } else if (_model.radioButtonValue ==
                          'తెలుగు  (Telugu)') {
                        return 'te';
                      } else if (_model.radioButtonValue == 'বাংলা  (Bangla)') {
                        return 'ba';
                      } else if (_model.radioButtonValue == 'தமிழ்  (Tamil)') {
                        return 'ta';
                      } else {
                        return 'en';
                      }
                    }(),
                  ));

                  context.pushNamed(
                    'SecondaryLangSelect',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                      ),
                    },
                  );

                  FFAppState().primaryLang =
                      valueOrDefault(currentUserDocument?.primaryLang, '');
                },
                text: FFLocalizations.of(context).getText(
                  '823b9wm1' /* Next */,
                ),
                icon: Icon(
                  Icons.arrow_forward,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.75,
                  height: 45.0,
                  padding: EdgeInsets.all(16.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                  borderSide: BorderSide(
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
    );
  }
}
