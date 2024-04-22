import '/akshar_pages/primary_language/primary_language_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'primary_lang_select_widget.dart' show PrimaryLangSelectWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PrimaryLangSelectModel extends FlutterFlowModel<PrimaryLangSelectWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Primary_Language component.
  late PrimaryLanguageModel primaryLanguageModel;

  @override
  void initState(BuildContext context) {
    primaryLanguageModel = createModel(context, () => PrimaryLanguageModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    primaryLanguageModel.dispose();
  }
}
