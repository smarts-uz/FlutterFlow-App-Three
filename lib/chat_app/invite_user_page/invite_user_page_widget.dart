import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'invite_user_page_model.dart';
export 'invite_user_page_model.dart';

class InviteUserPageWidget extends StatefulWidget {
  const InviteUserPageWidget({Key? key}) : super(key: key);

  @override
  _InviteUserPageWidgetState createState() => _InviteUserPageWidgetState();
}

class _InviteUserPageWidgetState extends State<InviteUserPageWidget> {
  late InviteUserPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InviteUserPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 24.0,
            ),
          ),
          title: Text(
            'Invite User',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<UsersRecord>>(
                stream: queryUsersRecord(),
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
                  List<UsersRecord> listViewUsersRecordList = snapshot.data!
                      .where((u) => u.uid != currentUserUid)
                      .toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewUsersRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewUsersRecord =
                          listViewUsersRecordList[listViewIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'ChatPage',
                            queryParameters: {
                              'chatUser': serializeParam(
                                listViewUsersRecord,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'chatUser': listViewUsersRecord,
                            },
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 60.0,
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    valueOrDefault<String>(
                                      listViewUsersRecord.photoUrl,
                                      'data:image/png;base64,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',
                                    ),
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: ListTile(
                                  title: Text(
                                    listViewUsersRecord.displayName,
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  subtitle: Text(
                                    listViewUsersRecord.email,
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
