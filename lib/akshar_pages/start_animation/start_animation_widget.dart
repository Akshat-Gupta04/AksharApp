import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 5000));

      context.goNamed(
        'HomePage',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
          ),
        },
      );
    });
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryText,
          body: const Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowVideoPlayer(
              path: 'assets/videos/animation2.mp4',
              videoType: VideoType.asset,
              width: double.infinity,
              height: double.infinity,
              autoPlay: true,
              looping: true,
              showControls: false,
              allowFullScreen: false,
              allowPlaybackSpeedMenu: false,
            ),
          ),
        ),
      ),
    );
  }
}
