import '/akshar_pages/user_list_small_1/user_list_small1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_list_widget.dart' show UserListWidget;
import 'package:flutter/material.dart';

class UserListModel extends FlutterFlowModel<UserListWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for user_ListSmall_1 dynamic component.
  late FlutterFlowDynamicModels<UserListSmall1Model> userListSmall1Models;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    userListSmall1Models =
        FlutterFlowDynamicModels(() => UserListSmall1Model());
  }

  @override
  void dispose() {
    userListSmall1Models.dispose();
  }
}
