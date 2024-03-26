import '/akshar_pages/delete_dialog/delete_dialog_widget.dart';
import '/akshar_pages/user_list_small/user_list_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_setting_overlay_widget.dart' show ChatSettingOverlayWidget;
import 'package:flutter/material.dart';

class ChatSettingOverlayModel
    extends FlutterFlowModel<ChatSettingOverlayWidget> {
  ///  State fields for stateful widgets in this component.

  // Models for user_ListSmall dynamic component.
  late FlutterFlowDynamicModels<UserListSmallModel> userListSmallModels;
  // Model for deleteDialog component.
  late DeleteDialogModel deleteDialogModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    userListSmallModels = FlutterFlowDynamicModels(() => UserListSmallModel());
    deleteDialogModel = createModel(context, () => DeleteDialogModel());
  }

  @override
  void dispose() {
    userListSmallModels.dispose();
    deleteDialogModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
