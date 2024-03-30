import '/akshar_pages/dark_light_switch/dark_light_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'setting_widget.dart' show SettingWidget;
import 'package:flutter/material.dart';

class SettingModel extends FlutterFlowModel<SettingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DarkLightSwitch component.
  late DarkLightSwitchModel darkLightSwitchModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    darkLightSwitchModel = createModel(context, () => DarkLightSwitchModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    darkLightSwitchModel.dispose();
  }
}
