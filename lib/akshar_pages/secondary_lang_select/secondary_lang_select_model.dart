import '/akshar_pages/secondary_language/secondary_language_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'secondary_lang_select_widget.dart' show SecondaryLangSelectWidget;
import 'package:flutter/material.dart';

class SecondaryLangSelectModel
    extends FlutterFlowModel<SecondaryLangSelectWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Secondary_Language component.
  late SecondaryLanguageModel secondaryLanguageModel;

  @override
  void initState(BuildContext context) {
    secondaryLanguageModel =
        createModel(context, () => SecondaryLanguageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    secondaryLanguageModel.dispose();
  }
}
