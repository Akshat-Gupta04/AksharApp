import '/akshar_pages/chat_update/chat_update_widget.dart';
import '/akshar_pages/group_state/group_state_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'chat_component_model.dart';
export 'chat_component_model.dart';

class ChatComponentWidget extends StatefulWidget {
  const ChatComponentWidget({
    super.key,
    this.chatRef,
  });

  final ChatsRecord? chatRef;

  @override
  State<ChatComponentWidget> createState() => _ChatComponentWidgetState();
}

class _ChatComponentWidgetState extends State<ChatComponentWidget> {
  late ChatComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatComponentModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF43C6AC), Color(0xFFF8FFAE)],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(-1.0, -0.87),
          end: AlignmentDirectional(1.0, 0.87),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: StreamBuilder<List<ChatMessagesRecord>>(
              stream: queryChatMessagesRecord(
                queryBuilder: (chatMessagesRecord) => chatMessagesRecord
                    .where(
                      'chat',
                      isEqualTo: widget.chatRef?.reference,
                    )
                    .orderBy('timestamp', descending: true),
                limit: 200,
              )..listen((snapshot) async {
                  List<ChatMessagesRecord> listViewChatMessagesRecordList =
                      snapshot;
                  if (_model.listViewPreviousSnapshot != null &&
                      !const ListEquality(ChatMessagesRecordDocumentEquality())
                          .equals(listViewChatMessagesRecordList,
                              _model.listViewPreviousSnapshot)) {
                    if (!widget.chatRef!.lastMessageSeenBy
                        .contains(currentUserReference)) {
                      await widget.chatRef!.reference.update({
                        ...mapToFirestore(
                          {
                            'last_message_seen_by':
                                FieldValue.arrayUnion([currentUserReference]),
                          },
                        ),
                      });
                    }

                    setState(() {});
                  }
                  _model.listViewPreviousSnapshot = snapshot;
                }),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    ),
                  );
                }
                List<ChatMessagesRecord> listViewChatMessagesRecordList =
                    snapshot.data!;
                if (listViewChatMessagesRecordList.isEmpty) {
                  return GroupStateWidget(
                    icon: Icon(
                      Icons.forum_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 90.0,
                    ),
                    title: 'No Messages',
                    body: 'You have not sent any messages in this chat yet.',
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    12.0,
                    0,
                    24.0,
                  ),
                  reverse: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewChatMessagesRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewChatMessagesRecord =
                        listViewChatMessagesRecordList[listViewIndex];
                    return Container(
                      decoration: const BoxDecoration(),
                      child: wrapWithModel(
                        model: _model.chatUpdateModels.getModel(
                          listViewChatMessagesRecord.reference.id,
                          listViewIndex,
                        ),
                        updateCallback: () => setState(() {}),
                        updateOnChange: true,
                        child: ChatUpdateWidget(
                          key: Key(
                            'Key003_${listViewChatMessagesRecord.reference.id}',
                          ),
                          chatMessagesRef: listViewChatMessagesRecord,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    -2.0,
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (_model.uploadedFileUrl != '')
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FlutterFlowMediaDisplay(
                                  path: _model.uploadedFileUrl,
                                  imageBuilder: (path) => ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          const Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          const Duration(milliseconds: 500),
                                      imageUrl: path,
                                      width: 120.0,
                                      height: 100.0,
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
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).error,
                                    borderRadius: 20.0,
                                    borderWidth: 2.0,
                                    buttonSize: 40.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    icon: Icon(
                                      Icons.delete_outline_rounded,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      setState(() {
                                        _model.isDataUploading = false;
                                        _model.uploadedLocalFile =
                                            FFUploadedFile(
                                                bytes: Uint8List.fromList([]));
                                        _model.uploadedFileUrl = '';
                                      });
                                    },
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(width: 8.0))
                                  .addToStart(const SizedBox(width: 16.0))
                                  .addToEnd(const SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 60.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.add_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              allowPhoto: true,
                              allowVideo: true,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              pickerFontFamily: 'Outfit',
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();

                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl = downloadUrls.first;
                                });
                                showUploadMessage(context, 'Success!');
                              } else {
                                setState(() {});
                                showUploadMessage(
                                    context, 'Failed to upload data');
                                return;
                              }
                            }

                            if (_model.uploadedFileUrl != '') {
                              setState(() {
                                _model.addToImagesUploaded(
                                    _model.uploadedFileUrl);
                              });
                            }
                          },
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    onFieldSubmitted: (_) async {
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      // newChatMessage

                                      var chatMessagesRecordReference =
                                          ChatMessagesRecord.collection.doc();
                                      await chatMessagesRecordReference
                                          .set(createChatMessagesRecordData(
                                        user: currentUserReference,
                                        chat: widget.chatRef?.reference,
                                        text: _model.textController.text,
                                        timestamp: getCurrentTimestamp,
                                        image: _model.uploadedFileUrl,
                                      ));
                                      _model.newChatMessage = ChatMessagesRecord
                                          .getDocumentFromData(
                                              createChatMessagesRecordData(
                                                user: currentUserReference,
                                                chat: widget.chatRef?.reference,
                                                text:
                                                    _model.textController.text,
                                                timestamp: getCurrentTimestamp,
                                                image: _model.uploadedFileUrl,
                                              ),
                                              chatMessagesRecordReference);
                                      // clearUsers
                                      _model.lastSeenBy = [];
                                      // In order to add a single user reference to a list of user references we are adding our current user reference to a page state.
                                      //
                                      // We will then set the value of the user reference list from this page state.
                                      // addMyUserToList
                                      _model.addToLastSeenBy(
                                          currentUserReference!);
                                      // updateChatDocument

                                      await widget.chatRef!.reference.update({
                                        ...createChatsRecordData(
                                          lastMessageTime: getCurrentTimestamp,
                                          lastMessageSentBy:
                                              currentUserReference,
                                          lastMessage:
                                              _model.textController.text,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'last_message_seen_by':
                                                _model.lastSeenBy,
                                          },
                                        ),
                                      });
                                      // clearUsers
                                      _model.lastSeenBy = [];
                                      setState(() {
                                        _model.textController?.clear();
                                      });
                                      setState(() {
                                        _model.isDataUploading = false;
                                        _model.uploadedLocalFile =
                                            FFUploadedFile(
                                                bytes: Uint8List.fromList([]));
                                        _model.uploadedFileUrl = '';
                                      });

                                      setState(() {
                                        _model.imagesUploaded = [];
                                      });

                                      setState(() {});
                                    },
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.sentences,
                                    textInputAction: TextInputAction.send,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'zljrmqlc' /* Start typing here... */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              16.0, 16.0, 56.0, 16.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    maxLines: null,
                                    minLines: null,
                                    cursorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 4.0, 6.0, 4.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 20.0,
                                    ),
                                    onPressed: () async {
                                      final firestoreBatch =
                                          FirebaseFirestore.instance.batch();
                                      try {
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        // newChatMessage

                                        var chatMessagesRecordReference =
                                            ChatMessagesRecord.collection.doc();
                                        firestoreBatch.set(
                                            chatMessagesRecordReference,
                                            createChatMessagesRecordData(
                                              user: currentUserReference,
                                              chat: widget.chatRef?.reference,
                                              text: _model.textController.text,
                                              timestamp: getCurrentTimestamp,
                                              image: _model.uploadedFileUrl,
                                            ));
                                        _model.newChat = ChatMessagesRecord
                                            .getDocumentFromData(
                                                createChatMessagesRecordData(
                                                  user: currentUserReference,
                                                  chat:
                                                      widget.chatRef?.reference,
                                                  text: _model
                                                      .textController.text,
                                                  timestamp:
                                                      getCurrentTimestamp,
                                                  image: _model.uploadedFileUrl,
                                                ),
                                                chatMessagesRecordReference);
                                        // clearUsers
                                        _model.lastSeenBy = [];
                                        // In order to add a single user reference to a list of user references we are adding our current user reference to a page state.
                                        //
                                        // We will then set the value of the user reference list from this page state.
                                        // addMyUserToList
                                        _model.addToLastSeenBy(
                                            currentUserReference!);
                                        // updateChatDocument

                                        firestoreBatch
                                            .update(widget.chatRef!.reference, {
                                          ...createChatsRecordData(
                                            lastMessageTime:
                                                getCurrentTimestamp,
                                            lastMessageSentBy:
                                                currentUserReference,
                                            lastMessage:
                                                _model.textController.text,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'last_message_seen_by':
                                                  _model.lastSeenBy,
                                            },
                                          ),
                                        });
                                        // clearUsers
                                        _model.lastSeenBy = [];
                                        setState(() {
                                          _model.textController?.clear();
                                        });
                                        setState(() {
                                          _model.isDataUploading = false;
                                          _model.uploadedLocalFile =
                                              FFUploadedFile(
                                                  bytes:
                                                      Uint8List.fromList([]));
                                          _model.uploadedFileUrl = '';
                                        });

                                        setState(() {
                                          _model.imagesUploaded = [];
                                        });
                                      } finally {
                                        await firestoreBatch.commit();
                                      }

                                      setState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
