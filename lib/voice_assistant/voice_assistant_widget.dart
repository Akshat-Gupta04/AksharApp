import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'voice_assistant_model.dart';
export 'voice_assistant_model.dart';

class VoiceAssistantWidget extends StatefulWidget {
  const VoiceAssistantWidget({super.key});

  @override
  State<VoiceAssistantWidget> createState() => _VoiceAssistantWidgetState();
}

class _VoiceAssistantWidgetState extends State<VoiceAssistantWidget> {
  late VoiceAssistantModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoiceAssistantModel());
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
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '2li5n4ho' /* Voice Assistant */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
      ),
    );
  }
}
