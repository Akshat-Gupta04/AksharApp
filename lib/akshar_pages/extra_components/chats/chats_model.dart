import '/flutter_flow/flutter_flow_util.dart';
import 'chats_widget.dart' show ChatsWidget;
import 'package:flutter/material.dart';

class ChatsModel extends FlutterFlowModel<ChatsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TypeSomething widget.
  FocusNode? typeSomethingFocusNode;
  TextEditingController? typeSomethingTextController;
  String? Function(BuildContext, String?)? typeSomethingTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    typeSomethingFocusNode?.dispose();
    typeSomethingTextController?.dispose();
  }
}
