import '/flutter_flow/flutter_flow_util.dart';
import 'start_animation_widget.dart' show StartAnimationWidget;
import 'package:flutter/material.dart';

class StartAnimationModel extends FlutterFlowModel<StartAnimationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
