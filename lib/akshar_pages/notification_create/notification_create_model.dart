import '/akshar_pages/user_list_small_1/user_list_small1_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'notification_create_widget.dart' show NotificationCreateWidget;
import 'package:flutter/material.dart';

class NotificationCreateModel
    extends FlutterFlowModel<NotificationCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Bottom Sheet - user_List] action in Container widget.
  UsersRecord? userRefSelected;
  // Model for user_ListSmall_1 component.
  late UserListSmall1Model userListSmall1Model;

  @override
  void initState(BuildContext context) {
    userListSmall1Model = createModel(context, () => UserListSmall1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    userListSmall1Model.dispose();
  }
}
