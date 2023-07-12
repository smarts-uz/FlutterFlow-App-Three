import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'control_swipeable_page_model.dart';
export 'control_swipeable_page_model.dart';

class ControlSwipeablePageWidget extends StatefulWidget {
  const ControlSwipeablePageWidget({Key? key}) : super(key: key);

  @override
  _ControlSwipeablePageWidgetState createState() =>
      _ControlSwipeablePageWidgetState();
}

class _ControlSwipeablePageWidgetState
    extends State<ControlSwipeablePageWidget> {
  late ControlSwipeablePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ControlSwipeablePageModel());
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
          title: Text(
            'ControlSwipeable',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FlutterFlowSwipeableStack(
                    topCardHeightFraction: 0.72,
                    middleCardHeightFraction: 0.68,
                    bottomCardHeightFraction: 0.75,
                    topCardWidthFraction: 0.9,
                    middleCardWidthFraction: 0.85,
                    bottomCardWidthFraction: 0.8,
                    onSwipeFn: (index) {},
                    onLeftSwipe: (index) {},
                    onRightSwipe: (index) {},
                    onUpSwipe: (index) {},
                    onDownSwipe: (index) {},
                    itemBuilder: (context, index) {
                      return [
                        () => Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'data:image/jpeg;base64,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',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Text(
                                        'Do you like this picture?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeDown();
                                            },
                                            child: Icon(
                                              Icons.thumb_down,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeUp();
                                            },
                                            child: Icon(
                                              Icons.thumb_up,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        () => Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'data:image/jpeg;base64,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',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Text(
                                        'Do you like this picture?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeDown();
                                            },
                                            child: Icon(
                                              Icons.thumb_down,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeUp();
                                            },
                                            child: Icon(
                                              Icons.thumb_up,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        () => Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'data:image/jpeg;base64,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',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Text(
                                        'Do you like this picture?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeDown();
                                            },
                                            child: Icon(
                                              Icons.thumb_down,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeUp();
                                            },
                                            child: Icon(
                                              Icons.thumb_up,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        () => Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent3,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.4,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.network(
                                            'data:image/jpeg;base64,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',
                                          ).image,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Text(
                                        'Do you like this picture?',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeDown();
                                            },
                                            child: Icon(
                                              Icons.thumb_down,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.swipeableStackController
                                                  .triggerSwipeUp();
                                            },
                                            child: Icon(
                                              Icons.thumb_up,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 80.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      ][index]();
                    },
                    itemCount: 4,
                    controller: _model.swipeableStackController,
                    enableSwipeUp: false,
                    enableSwipeDown: false,
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
