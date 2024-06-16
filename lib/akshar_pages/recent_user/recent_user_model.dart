import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recent_user_widget.dart' show RecentUserWidget;
import 'package:flutter/material.dart';

class RecentUserModel extends FlutterFlowModel<RecentUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
