import '/akshar_pages/generate_image/generate_image_widget.dart';
import '/akshar_pages/generate_text/generate_text_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'generate_text_widget.dart' show GenerateTextWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GenerateTextModel extends FlutterFlowModel<GenerateTextWidget> {
  ///  Local state fields for this component.

  bool notEnLan = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (detects)] action in Button widget.
  ApiCallResponse? detect1;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? textResult;
  // Stores action output result for [Backend Call - API (translates)] action in Button widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? textResult1;
  // Stores action output result for [Backend Call - API (translates)] action in Button widget.
  ApiCallResponse? translatedtext;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
