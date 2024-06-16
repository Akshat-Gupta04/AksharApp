import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'about_akshar_model.dart';
export 'about_akshar_model.dart';

class AboutAksharWidget extends StatefulWidget {
  const AboutAksharWidget({super.key});

  @override
  State<AboutAksharWidget> createState() => _AboutAksharWidgetState();
}

class _AboutAksharWidgetState extends State<AboutAksharWidget> {
  late AboutAksharModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutAksharModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF43C6AC), Color(0xFFF8FFAE)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(-1.0, -0.87),
                  end: AlignmentDirectional(1.0, 0.87),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 12.0),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 3.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 8.0, 0.0),
                                      child: Html(
                                        data:
                                            '  <style>\n        .center-red {\n            text-align: center;\n            color: blue;\n        }\n    </style>\n <h1 class=\"center-red\">Akshar</h1>\n    <h2>Tagline:</h2>\n    <p><em>\"Lost your translation? Never Again\"</em></p>\n    <h2>Description:</h2>\n    <p>Akshar is a chat application designed to break language barriers seamlessly. Users can set their default language, and messages from other users in different languages will be automatically translated to their preferred language, whether they are text or audio messages. We prioritize user experience by allowing users to view messages in both their secondary language and the original language it was written in, ensuring translation accuracy.</p>\n    <p>The application is built using Flutter, offering a smooth and dynamic user interface across multiple platforms. In addition to language translation features, Akshar includes fundamental chatting functionalities such as document, image, video, and location sharing.</p>\n    <h2>Features:</h2>\n    <ul>\n        <li>Seamless language translation for text and audio messages.</li>\n        <li>View messages in both secondary language and original language for translation accuracy.</li>\n        <li>Cross-platform compatibility with Flutter.</li>\n        <li>AI assistant in users prefered language.</li>\n    </ul>\n    <h2>How to Use:</h2>\n    <ol>\n        <li>Download and install the Akshar application on your device.</li>\n        <li>Sign up or log in to your account.</li>\n        <li>Set your default language preference in the application settings.</li>\n        <li>Start chatting with friends and experience seamless language translation.</li>\n        <li>Explore additional features such as document, image, video.</li>\n    </ol>\n    <h2>Future Enhancements:</h2>\n    <ul>\n        <li>Integration of more languages for translation.</li>\n<li>Integrating voice and visuaal translation</li>\n        <li>Improvements in translation accuracy and speed.</li>\n        <li>Enhanced security features for user privacy.</li>\n        <li>Customization options for user interface and themes.</li>\n    </ul>\n    <h2>Contributors:</h2>\n    <ul>\n        <li><a href=\"https://github.com/Akshat-Gupta04\">Akshat Gupta</a></li>\n        <li><a href=\"https://github.com/E22CSEU0037\">Geetika</a></li>\n        <li><a href=\"https://github.com/paridhiU\">Paridhi</a></li>\n    </ul>',
                                        onLinkTap: (url, _, __, ___) =>
                                            launchURL(url!),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FlutterFlowYoutubePlayer(
                                        url:
                                            'https://youtu.be/01IfciN13LM?si=jnUBcIEDhsPsydMq',
                                        autoPlay: false,
                                        looping: true,
                                        mute: false,
                                        showControls: true,
                                        showFullScreen: true,
                                        strictRelatedVideos: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.9, -0.93),
                    child: FlutterFlowIconButton(
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      icon: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
