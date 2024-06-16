import '/flutter_flow/flutter_flow_util.dart';
import 'animtion_widget.dart' show AnimtionWidget;
import 'package:flutter/material.dart';

class AnimtionModel extends FlutterFlowModel<AnimtionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
