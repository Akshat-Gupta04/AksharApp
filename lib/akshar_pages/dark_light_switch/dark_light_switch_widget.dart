import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dark_light_switch_model.dart';
export 'dark_light_switch_model.dart';

class DarkLightSwitchWidget extends StatefulWidget {
  const DarkLightSwitchWidget({super.key});

  @override
  State<DarkLightSwitchWidget> createState() => _DarkLightSwitchWidgetState();
}

class _DarkLightSwitchWidgetState extends State<DarkLightSwitchWidget>
    with TickerProviderStateMixin {
  late DarkLightSwitchModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkLightSwitchModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(115.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
      child: Container(
        width: 250.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setDarkModeSetting(context, ThemeMode.light);
                  },
                  child: Container(
                    width: 115.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.light
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          Theme.of(context).brightness == Brightness.light
                              ? FlutterFlowTheme.of(context).alternate
                              : FlutterFlowTheme.of(context).primaryBackground,
                          FlutterFlowTheme.of(context).alternate,
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.wb_sunny_rounded,
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? FlutterFlowTheme.of(context).primaryText
                                  : FlutterFlowTheme.of(context).secondaryText,
                          size: 16.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'hmx7dtwq' /* Light Mode */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Theme.of(context).brightness ==
                                          Brightness.light
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setDarkModeSetting(context, ThemeMode.dark);
                  },
                  child: Container(
                    width: 115.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? FlutterFlowTheme.of(context).secondaryBackground
                          : FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: valueOrDefault<Color>(
                          Theme.of(context).brightness == Brightness.dark
                              ? FlutterFlowTheme.of(context).alternate
                              : FlutterFlowTheme.of(context).primaryBackground,
                          FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.nightlight_round,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? FlutterFlowTheme.of(context).primaryText
                              : FlutterFlowTheme.of(context).secondaryText,
                          size: 16.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              4.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'pr5wlia2' /* Dark Mode */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation']!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
