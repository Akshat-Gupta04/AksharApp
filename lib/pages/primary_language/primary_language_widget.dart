import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/secondary_language/secondary_language_widget.dart';
import 'package:flutter/material.dart';
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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Primary Language',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  'Choose your first languge',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 36.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 28.0),
                      child: FlutterFlowRadioButton(
                        options: [
                          'हिंदी  (Hindi)',
                          'English',
                          'ਪੰਜਾਬੀ  (Punjabi)',
                          'తెలుగు  (Telugu)',
                          'বাংলা  (Bangla)',
                          'தமிழ்  (Tamil)'
                        ].toList(),
                        onChanged: (val) => setState(() {}),
                        controller: _model.radioButtonValueController ??=
                            FormFieldController<String>('English'),
                        optionHeight: 90.0,
                        optionWidth: MediaQuery.sizeOf(context).width * 0.8,
                        textStyle:
                            FlutterFlowTheme.of(context).labelLarge.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        selectedTextStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  fontSize: 32.0,
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 36.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await currentUserReference!.update(createUsersRecordData(
                      primaryLang: () {
                        if (_model.radioButtonValue == 'हिंदी  (Hindi)') {
                          return 'Hindi';
                        } else if (_model.radioButtonValue ==
                            'ਪੰਜਾਬੀ  (Punjabi)') {
                          return 'Punjabi';
                        } else if (_model.radioButtonValue ==
                            'తెలుగు  (Telugu)') {
                          return 'Telugu';
                        } else if (_model.radioButtonValue ==
                            'বাংলা  (Bangla)') {
                          return 'Bangla';
                        } else if (_model.radioButtonValue ==
                            'தமிழ்  (Tamil)') {
                          return 'Tamil';
                        } else {
                          return 'English';
                        }
                      }(),
                    ));
                    Navigator.pop(context);
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: FlutterFlowTheme.of(context).primaryText,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: const SecondaryLanguageWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  text: 'Next',
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding: const EdgeInsets.all(16.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
