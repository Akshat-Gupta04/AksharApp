import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? useAIController;
  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    useAIController?.finish();
    unfocusNode.dispose();
  }
}
