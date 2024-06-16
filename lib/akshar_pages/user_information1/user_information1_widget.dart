import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'user_information1_model.dart';
export 'user_information1_model.dart';

class UserInformation1Widget extends StatefulWidget {
  const UserInformation1Widget({
    super.key,
    required this.userRef,
  });

  final DocumentReference? userRef;

  @override
  State<UserInformation1Widget> createState() => _UserInformation1WidgetState();
}

class _UserInformation1WidgetState extends State<UserInformation1Widget> {
  late UserInformation1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserInformation1Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: const BoxDecoration(),
      child: FutureBuilder<UsersRecord>(
        future: UsersRecord.getDocumentOnce(widget.userRef!),
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
          final rowUsersRecord = snapshot.data!;
          return Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 16.0, 4.0),
                child: Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent1,
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 2.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 200),
                        fadeOutDuration: const Duration(milliseconds: 200),
                        imageUrl: rowUsersRecord.photoUrl,
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      rowUsersRecord.displayName,
                      'Ghost User',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          rowUsersRecord.primaryLang,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        child: VerticalDivider(
                          thickness: 2.0,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          rowUsersRecord.secondaryLang,
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
