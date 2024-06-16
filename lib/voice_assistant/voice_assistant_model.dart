import '/flutter_flow/flutter_flow_util.dart';
import 'voice_assistant_widget.dart' show VoiceAssistantWidget;
import 'package:flutter/material.dart';

class VoiceAssistantModel extends FlutterFlowModel<VoiceAssistantWidget> {
  ///  Local state fields for this page.

  bool isRecording = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
