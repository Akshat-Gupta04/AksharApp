import '/akshar_pages/covert_to_orginal/covert_to_orginal_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'chat_update_model.dart';
export 'chat_update_model.dart';

class ChatUpdateWidget extends StatefulWidget {
  const ChatUpdateWidget({
    super.key,
    required this.chatMessagesRef,
  });

  final ChatMessagesRecord? chatMessagesRef;

  @override
  State<ChatUpdateWidget> createState() => _ChatUpdateWidgetState();
}

class _ChatUpdateWidgetState extends State<ChatUpdateWidget> {
  late ChatUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatUpdateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Builder(
          builder: (context) {
            if (widget.chatMessagesRef?.type == 'txt') {
              return Visibility(
                visible: widget.chatMessagesRef?.user != currentUserReference,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: FutureBuilder<UsersRecord>(
                        future: _model.chatUser(
                          uniqueQueryKey: widget.chatMessagesRef?.reference.id,
                          requestFn: () => UsersRecord.getDocumentOnce(
                              widget.chatMessagesRef!.user!),
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final otherUserUsersRecord = snapshot.data!;
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 8.0, 16.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onLongPress: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      isDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: CovertToOrginalWidget(
                                              intro:
                                                  '${otherUserUsersRecord.displayName} sent this message in ${() {
                                                if (otherUserUsersRecord
                                                        .primaryLang ==
                                                    'hi') {
                                                  return 'Hindi';
                                                } else if (otherUserUsersRecord
                                                        .primaryLang ==
                                                    'pa') {
                                                  return 'Punjabi';
                                                } else if (otherUserUsersRecord
                                                        .primaryLang ==
                                                    'ta') {
                                                  return 'Tamil';
                                                } else if (otherUserUsersRecord
                                                        .primaryLang ==
                                                    'te') {
                                                  return 'Telgu';
                                                } else if (otherUserUsersRecord
                                                        .primaryLang ==
                                                    'ba') {
                                                  return 'Bangla';
                                                } else {
                                                  return 'English';
                                                }
                                              }()} Language',
                                              conversion:
                                                  widget.chatMessagesRef!.text,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(12.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Builder(
                                      builder: (context) {
                                        if (otherUserUsersRecord.photoUrl !=
                                                '') {
                                          return Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    const Duration(milliseconds: 200),
                                                fadeOutDuration:
                                                    const Duration(milliseconds: 200),
                                                imageUrl:
                                                    valueOrDefault<String>(
                                                  otherUserUsersRecord.photoUrl,
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/test-flow-at3mts/assets/jozbfglfd548/flutterflow_future%402x.jpg',
                                                ),
                                                width: 44.0,
                                                height: 44.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          );
                                        } else {
                                          return Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  otherUserUsersRecord
                                                      .displayName,
                                                  'A',
                                                ).maybeHandleOverflow(
                                                    maxChars: 1),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SelectionArea(
                                              child: AutoSizeText(
                                            otherUserUsersRecord.displayName,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                          Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                'jm',
                                                widget
                                                    .chatMessagesRef?.timestamp,
                                                locale: FFLocalizations.of(
                                                            context)
                                                        .languageShortCode ??
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              '--',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x33000000),
                                              offset: Offset(
                                                0.0,
                                                1.0,
                                              ),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(24.0),
                                            bottomRight: Radius.circular(24.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(24.0),
                                          ),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onDoubleTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                context: context,
                                                builder: (context) {
                                                  return WebViewAware(
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          CovertToOrginalWidget(
                                                        intro:
                                                            'You have selected ${() {
                                                          if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.secondaryLang,
                                                                  '') ==
                                                              'hi') {
                                                            return 'Hindi';
                                                          } else if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.secondaryLang,
                                                                  '') ==
                                                              'pa') {
                                                            return 'Punjabi';
                                                          } else if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.secondaryLang,
                                                                  '') ==
                                                              'ta') {
                                                            return 'Tamil';
                                                          } else if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.secondaryLang,
                                                                  '') ==
                                                              'te') {
                                                            return 'Telgu';
                                                          } else if (valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.secondaryLang,
                                                                  '') ==
                                                              'ba') {
                                                            return 'Bangla';
                                                          } else {
                                                            return 'English';
                                                          }
                                                        }()}   as your Secondary Language',
                                                        conversion: widget
                                                            .chatMessagesRef!
                                                            .text3,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SelectionArea(
                                                    child: Text(
                                                  widget.chatMessagesRef!.text2,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                )),
                                                if (widget.chatMessagesRef
                                                            ?.image !=
                                                        null &&
                                                    widget.chatMessagesRef
                                                            ?.image !=
                                                        '')
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 4.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'image_Details',
                                                          queryParameters: {
                                                            'chatMessage':
                                                                serializeParam(
                                                              widget
                                                                  .chatMessagesRef,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'chatMessage': widget
                                                                .chatMessagesRef,
                                                          },
                                                        );
                                                      },
                                                      child:
                                                          FlutterFlowMediaDisplay(
                                                        path: widget
                                                            .chatMessagesRef!
                                                            .image,
                                                        imageBuilder: (path) =>
                                                            ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              CachedNetworkImage(
                                                            fadeInDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        500),
                                                            fadeOutDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        500),
                                                            imageUrl: path,
                                                            width: 300.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        videoPlayerBuilder:
                                                            (path) =>
                                                                FlutterFlowVideoPlayer(
                                                          path: path,
                                                          width: 300.0,
                                                          autoPlay: false,
                                                          looping: false,
                                                          showControls: true,
                                                          allowFullScreen: true,
                                                          allowPlaybackSpeedMenu:
                                                              false,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Visibility(
                visible: widget.chatMessagesRef?.user != currentUserReference,
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '1ex6s9r3' /* under Progress....... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              );
            }
          },
        ),
        Builder(
          builder: (context) {
            if (widget.chatMessagesRef?.type == 'txt') {
              return Visibility(
                visible: widget.chatMessagesRef?.user == currentUserReference,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                20.0, 10.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      1.0,
                                    ),
                                  )
                                ],
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(24.0),
                                  bottomRight: Radius.circular(24.0),
                                  topLeft: Radius.circular(24.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 8.0, 8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SelectionArea(
                                        child: Text(
                                      widget.chatMessagesRef!.text,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    )),
                                    if (widget.chatMessagesRef?.image != null &&
                                        widget.chatMessagesRef?.image != '')
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 4.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'image_Details',
                                              queryParameters: {
                                                'chatMessage': serializeParam(
                                                  widget.chatMessagesRef,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'chatMessage':
                                                    widget.chatMessagesRef,
                                              },
                                            );
                                          },
                                          child: FlutterFlowMediaDisplay(
                                            path: widget.chatMessagesRef!.image,
                                            imageBuilder: (path) => ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    const Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    const Duration(milliseconds: 500),
                                                imageUrl: path,
                                                width: 300.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            videoPlayerBuilder: (path) =>
                                                FlutterFlowVideoPlayer(
                                              path: path,
                                              width: 300.0,
                                              autoPlay: false,
                                              looping: true,
                                              showControls: true,
                                              allowFullScreen: true,
                                              allowPlaybackSpeedMenu: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 8.0),
                            child: Text(
                              dateTimeFormat(
                                'jm',
                                widget.chatMessagesRef!.timestamp!,
                                locale: FFLocalizations.of(context)
                                        .languageShortCode ??
                                    FFLocalizations.of(context).languageCode,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Visibility(
                visible: widget.chatMessagesRef?.user == currentUserReference,
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'wec5ldan' /* Under progess.................... */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
