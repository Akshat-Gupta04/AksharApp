import '/akshar_pages/group_state/group_state_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'chat_add_user_model.dart';
export 'chat_add_user_model.dart';

class ChatAddUserWidget extends StatefulWidget {
  const ChatAddUserWidget({
    super.key,
    this.chatRef,
  });

  final ChatsRecord? chatRef;

  @override
  State<ChatAddUserWidget> createState() => _ChatAddUserWidgetState();
}

class _ChatAddUserWidgetState extends State<ChatAddUserWidget> {
  late ChatAddUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatAddUserModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.chatRef != null) {
        // addChatUsers_ToList
        setState(() {
          _model.friendsList =
              widget.chatRef!.users.toList().cast<DocumentReference>();
        });
      } else {
        // addUser_ToList
        setState(() {
          _model.addToFriendsList(currentUserReference!);
        });
      }
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'ukqk38do' /* Invite Friends */,
                ),
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'e97g2xum' /* Select users from below to sta... */,
                  ),
                  style: FlutterFlowTheme.of(context).labelSmall,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 4.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).alternate,
                borderRadius: 12.0,
                borderWidth: 1.0,
                buttonSize: 44.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Container(
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
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'tsllruh8' /* Invite Friends */,
                              ),
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 0.0, 0.0),
                          child: Text(
                            ((valueOrDefault<int>(
                                      _model.friendsList.length,
                                      0,
                                    ) -
                                    1))
                                .toString(),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              2.0, 12.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '5iasfji3' /* Selected */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: PagedListView<DocumentSnapshot<Object?>?,
                          UsersRecord>(
                        pagingController: _model.setListViewController(
                          UsersRecord.collection.orderBy('display_name'),
                        ),
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          0,
                          0,
                          160.0,
                        ),
                        reverse: false,
                        scrollDirection: Axis.vertical,
                        builderDelegate: PagedChildBuilderDelegate<UsersRecord>(
                          // Customize what your widget looks like when it's loading the first page.
                          firstPageProgressIndicatorBuilder: (_) => Center(
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
                          // Customize what your widget looks like when it's loading another page.
                          newPageProgressIndicatorBuilder: (_) => Center(
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
                          noItemsFoundIndicatorBuilder: (_) => GroupStateWidget(
                            icon: Icon(
                              Icons.groups_outlined,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 90.0,
                            ),
                            title: 'No Friends',
                            body: 'No users exist to create a chat with.',
                          ),
                          itemBuilder: (context, _, listViewIndex) {
                            final listViewUsersRecord = _model
                                .listViewPagingController!
                                .itemList![listViewIndex];
                            return Visibility(
                              visible: listViewUsersRecord.reference !=
                                  currentUserReference,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 8.0),
                                child: Container(
                                  width: 100.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: _model.friendsList.contains(
                                            listViewUsersRecord.reference)
                                        ? FlutterFlowTheme.of(context).accent1
                                        : FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: _model.friendsList.contains(
                                              listViewUsersRecord.reference)
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 44.0,
                                          height: 44.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10.0),
                                              bottomRight:
                                                  Radius.circular(10.0),
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    const Duration(milliseconds: 200),
                                                fadeOutDuration:
                                                    const Duration(milliseconds: 200),
                                                imageUrl: listViewUsersRecord
                                                    .photoUrl,
                                                width: 44.0,
                                                height: 44.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                          ),
                                          child: CheckboxListTile(
                                            value:
                                                _model.checkboxListTileValueMap[
                                                        listViewUsersRecord] ??=
                                                    _model.friendsList.contains(
                                                            listViewUsersRecord
                                                                .reference) ==
                                                        true,
                                            onChanged: (newValue) async {
                                              setState(() =>
                                                  _model.checkboxListTileValueMap[
                                                          listViewUsersRecord] =
                                                      newValue!);
                                              if (newValue!) {
                                                // addUser
                                                setState(() {
                                                  _model.addToFriendsList(
                                                      listViewUsersRecord
                                                          .reference);
                                                });
                                              } else {
                                                // removeUsser
                                                setState(() {
                                                  _model.removeFromFriendsList(
                                                      listViewUsersRecord
                                                          .reference);
                                                });
                                              }
                                            },
                                            title: Text(
                                              valueOrDefault<String>(
                                                listViewUsersRecord.displayName,
                                                'Ghost User',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        lineHeight: 2.0,
                                                      ),
                                            ),
                                            subtitle: Text(
                                              valueOrDefault<String>(
                                                listViewUsersRecord.email,
                                                'casper@ghost.io',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor: Colors.white,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity
                                                    .trailing,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 8.0, 0.0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 140.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        FlutterFlowTheme.of(context).accent4,
                        FlutterFlowTheme.of(context).secondaryBackground
                      ],
                      stops: const [0.0, 1.0],
                      begin: const AlignmentDirectional(0.0, -1.0),
                      end: const AlignmentDirectional(0, 1.0),
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(80.0),
                      topRight: Radius.circular(80.0),
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(28.0, 0.0, 26.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (_model.friendsList.length >= 2) {
                          if (widget.chatRef != null) {
                            // updateChat

                            await widget.chatRef!.reference.update({
                              ...mapToFirestore(
                                {
                                  'users': _model.friendsList,
                                },
                              ),
                            });
                            // updateChat
                            _model.updatedChatThread =
                                await queryChatsRecordOnce(
                              queryBuilder: (chatsRecord) => chatsRecord.where(
                                'group_chat_id',
                                isEqualTo: widget.chatRef?.groupChatId,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'chat_interface',
                              queryParameters: {
                                'chatRef': serializeParam(
                                  _model.updatedChatThread,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'chatRef': _model.updatedChatThread,
                              },
                            );
                          } else {
                            // newChat

                            var chatsRecordReference =
                                ChatsRecord.collection.doc();
                            await chatsRecordReference.set({
                              ...createChatsRecordData(
                                userA: currentUserReference,
                                userB: _model.friendsList[1],
                                lastMessage: '',
                                lastMessageTime: getCurrentTimestamp,
                                lastMessageSentBy: currentUserReference,
                                groupChatId:
                                    random_data.randomInteger(1000000, 9999999),
                              ),
                              ...mapToFirestore(
                                {
                                  'users': _model.friendsList,
                                },
                              ),
                            });
                            _model.newChatThread =
                                ChatsRecord.getDocumentFromData({
                              ...createChatsRecordData(
                                userA: currentUserReference,
                                userB: _model.friendsList[1],
                                lastMessage: '',
                                lastMessageTime: getCurrentTimestamp,
                                lastMessageSentBy: currentUserReference,
                                groupChatId:
                                    random_data.randomInteger(1000000, 9999999),
                              ),
                              ...mapToFirestore(
                                {
                                  'users': _model.friendsList,
                                },
                              ),
                            }, chatsRecordReference);
                            if (Navigator.of(context).canPop()) {
                              context.pop();
                            }
                            context.pushNamed(
                              'chat_interface',
                              queryParameters: {
                                'chatRef': serializeParam(
                                  _model.newChatThread,
                                  ParamType.Document,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                'chatRef': _model.newChatThread,
                              },
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'You must select at least one other user to start a chat.',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context).info,
                                    ),
                              ),
                              duration: const Duration(milliseconds: 3000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                            ),
                          );
                        }

                        setState(() {});
                      },
                      text: widget.chatRef != null
                          ? 'Add to Chat'
                          : 'Send Invites',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryText,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 2.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
