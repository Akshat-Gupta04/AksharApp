import '/akshar_pages/covert_to_orginal/covert_to_orginal_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_media_display.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/request_manager.dart';

import 'chat_update_widget.dart' show ChatUpdateWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatUpdateModel extends FlutterFlowModel<ChatUpdateWidget> {
  /// Query cache managers for this widget.

  final _chatUserManager = FutureRequestManager<UsersRecord>();
  Future<UsersRecord> chatUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<UsersRecord> Function() requestFn,
  }) =>
      _chatUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChatUserCache() => _chatUserManager.clear();
  void clearChatUserCacheKey(String? uniqueKey) =>
      _chatUserManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    /// Dispose query cache managers for this widget.

    clearChatUserCache();
  }
}
