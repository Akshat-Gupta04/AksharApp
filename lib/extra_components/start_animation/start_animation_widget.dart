import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'start_animation_model.dart';
export 'start_animation_model.dart';

class StartAnimationWidget extends StatefulWidget {
  const StartAnimationWidget({super.key});

  @override
  State<StartAnimationWidget> createState() => _StartAnimationWidgetState();
}

class _StartAnimationWidgetState extends State<StartAnimationWidget> {
  late StartAnimationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StartAnimationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFFF3131),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  child: const FlutterFlowVideoPlayer(
                    path: 'assets/videos/animation.mp4',
                    videoType: VideoType.asset,
                    autoPlay: true,
                    looping: true,
                    showControls: false,
                    allowFullScreen: false,
                    allowPlaybackSpeedMenu: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
