import '/akshar_pages/chat_update/chat_update_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_component_widget.dart' show ChatComponentWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class ChatComponentModel extends FlutterFlowModel<ChatComponentWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> lastSeenBy = [];
  void addToLastSeenBy(DocumentReference item) => lastSeenBy.add(item);
  void removeFromLastSeenBy(DocumentReference item) => lastSeenBy.remove(item);
  void removeAtIndexFromLastSeenBy(int index) => lastSeenBy.removeAt(index);
  void insertAtIndexInLastSeenBy(int index, DocumentReference item) =>
      lastSeenBy.insert(index, item);
  void updateLastSeenByAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      lastSeenBy[index] = updateFn(lastSeenBy[index]);

  List<String> imagesUploaded = [];
  void addToImagesUploaded(String item) => imagesUploaded.add(item);
  void removeFromImagesUploaded(String item) => imagesUploaded.remove(item);
  void removeAtIndexFromImagesUploaded(int index) =>
      imagesUploaded.removeAt(index);
  void insertAtIndexInImagesUploaded(int index, String item) =>
      imagesUploaded.insert(index, item);
  void updateImagesUploadedAtIndex(int index, Function(String) updateFn) =>
      imagesUploaded[index] = updateFn(imagesUploaded[index]);

  bool audioRecord = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  List<ChatMessagesRecord>? listViewPreviousSnapshot;
  // Models for chat_Update dynamic component.
  late FlutterFlowDynamicModels<ChatUpdateModel> chatUpdateModels;
  String? xyz;
  FFUploadedFile recordedFileBytes1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String? audiopath;
  FFUploadedFile recordedFileBytes2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatMessagesRecord? newChat1;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  AudioRecorder? audioRecorder;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in TextField widget.
  ChatMessagesRecord? newChatMessage;
  // Stores action output result for [Backend Call - API (detects)] action in IconButton widget.
  ApiCallResponse? langD;
  // Stores action output result for [Backend Call - API (translates)] action in IconButton widget.
  ApiCallResponse? translte1;
  // Stores action output result for [Backend Call - API (translates)] action in IconButton widget.
  ApiCallResponse? translate2;
  // Stores action output result for [Backend Call - API (translates)] action in IconButton widget.
  ApiCallResponse? translate3;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatMessagesRecord? newChat;

  @override
  void initState(BuildContext context) {
    chatUpdateModels = FlutterFlowDynamicModels(() => ChatUpdateModel());
  }

  @override
  void dispose() {
    chatUpdateModels.dispose();
    timerController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
