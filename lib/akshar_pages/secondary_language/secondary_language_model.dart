import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'secondary_language_widget.dart' show SecondaryLanguageWidget;
import 'package:flutter/material.dart';

class SecondaryLanguageModel extends FlutterFlowModel<SecondaryLanguageWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
