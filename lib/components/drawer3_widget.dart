import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_static_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mapbox_search/mapbox_search.dart';

class Drawer3Widget extends StatefulWidget {
  const Drawer3Widget({Key key}) : super(key: key);

  @override
  _Drawer3WidgetState createState() => _Drawer3WidgetState();
}

class _Drawer3WidgetState extends State<Drawer3Widget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'columnOnActionTriggerAnimation': AnimationInfo(
      curve: Curves.easeOut,
      trigger: AnimationTrigger.onActionTrigger,
      duration: 200,
      hideBeforeAnimating: false,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 600),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Color(0xFF7C7C7C),
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(17, 15, 0, 0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              color: Color(0xFF7C7C7C),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Color(0xFF7C7C7C),
                                  offset: Offset(2, 5),
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.arrow_drop_down_circle_rounded,
                                color:
                                    FlutterFlowTheme.of(context).customColor1,
                                size: 40,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'IconButton_Update-Local-State');
                                setState(
                                    () => FFAppState().ShowingDrawer = false);
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(17, 15, 17, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 75,
                              decoration: BoxDecoration(
                                color:
                                    FlutterFlowTheme.of(context).customColor3,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    color: Color(0xFF7C7C7C),
                                    offset: Offset(2, 5),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        17, 0, 0, 0),
                                    child: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF7C7C7C),
                                      size: 40,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 20, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: AuthUserStreamWidget(
                                              child: Text(
                                                valueOrDefault<String>(
                                                  currentUserDisplayName,
                                                  'Hello There!',
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title2
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 10),
                                          child: Text(
                                            valueOrDefault<String>(
                                              currentUserEmail,
                                              'Hi',
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent('Container_Auth');
                                GoRouter.of(context).prepareAuthEvent();
                                await signOut();
                                logFirebaseEvent(
                                    'Container_Update-Local-State');
                                setState(() => FFAppState().ShowingDrawer =
                                    !(FFAppState().ShowingDrawer));
                                context.goNamedAuth('Onboard', mounted);
                              },
                              child: Container(
                                width: 160,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Color(0xFF7C7C7C),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Color(0xFF7C7C7C),
                                      offset: Offset(2, 5),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.https_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor1,
                                      size: 40,
                                    ),
                                    Text(
                                      'Log Out',
                                      style: FlutterFlowTheme.of(context)
                                          .title2
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .customColor1,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent('Container_Navigate-To');
                                context.pushNamed('PaymentMethod');
                                logFirebaseEvent(
                                    'Container_Update-Local-State');
                                setState(() => FFAppState().ShowingDrawer =
                                    !(FFAppState().ShowingDrawer));
                              },
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Color(0xFF7C7C7C),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Color(0xFF7C7C7C),
                                      offset: Offset(2, 5),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: InkWell(
                                  onTap: () async {
                                    logFirebaseEvent('Column_Navigate-To');
                                    context.pushNamed('PaymentMethod');
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 13, 0, 0),
                                        child: Icon(
                                          Icons.account_balance_wallet_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .customColor1,
                                          size: 30,
                                        ),
                                      ),
                                      Text(
                                        'Wallet',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor1,
                                              fontSize: 12,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                logFirebaseEvent('Container_Navigate-To');
                                context.pushNamed('Earnings');
                                logFirebaseEvent(
                                    'Container_Update-Local-State');
                                setState(() => FFAppState().ShowingDrawer =
                                    FFAppState().ShowingDrawer);
                              },
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  color: Color(0xFF7C7C7C),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Color(0xFF7C7C7C),
                                      offset: Offset(2, 5),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 13, 0, 0),
                                      child: Icon(
                                        Icons.local_atm_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .customColor1,
                                        size: 30,
                                      ),
                                    ),
                                    Text(
                                      'Earnings',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .customColor1,
                                            fontSize: 12,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () async {
                                logFirebaseEvent('Container_Navigate-To');
                                context.pushNamed('Address');
                              },
                              child: Container(
                                width: 160,
                                height: 160,
                                decoration: BoxDecoration(
                                  color: Color(0xFF7C7C7C),
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 10,
                                      color: Color(0xFF7C7C7C),
                                      offset: Offset(2, 5),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 7, 8, 0),
                                      child: Text(
                                        'Delivery Address:',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor1,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7, 7, 7, 7),
                                      child: FlutterFlowStaticMap(
                                        location: LatLng(43.615, -116.2023),
                                        apiKey:
                                            'pk.eyJ1Ijoib25lc3RvbmUiLCJhIjoiY2tmNGRoMWJwMGJ6eTMybnNrYTR0bjBwYSJ9.plGaYnzxGfestEa5FgOl9w',
                                        style: MapBoxStyle.Outdoors,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 112,
                                        fit: BoxFit.cover,
                                        borderRadius: BorderRadius.circular(15),
                                        zoom: 8,
                                        tilt: 0,
                                        rotation: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'Container_Navigate-To');
                                        context.pushNamed('Account');
                                        logFirebaseEvent(
                                            'Container_Update-Local-State');
                                        setState(() =>
                                            FFAppState().ShowingDrawer =
                                                FFAppState().ShowingDrawer);
                                      },
                                      child: Container(
                                        width: 160,
                                        height: 73,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF7C7C7C),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 10,
                                              color: Color(0xFF7C7C7C),
                                              offset: Offset(2, 5),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  Icons.assignment_ind,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor1,
                                                  size: 40,
                                                ),
                                                Text(
                                                  'Profile',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor1,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'Container_Navigate-To');
                                          context.pushNamed('Help');
                                          logFirebaseEvent(
                                              'Container_Update-Local-State');
                                          setState(() => FFAppState()
                                                  .ShowingDrawer =
                                              !(FFAppState().ShowingDrawer));
                                        },
                                        child: Container(
                                          width: 75,
                                          height: 75,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF7C7C7C),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10,
                                                color: Color(0xFF7C7C7C),
                                                offset: Offset(2, 5),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'Column_Navigate-To');
                                              context.pushNamed('Help');
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 13, 0, 0),
                                                  child: Icon(
                                                    Icons.error_outline_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor1,
                                                    size: 30,
                                                  ),
                                                ),
                                                Text(
                                                  'Help',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor1,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15, 12, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'Container_Navigate-To');
                                          context.pushNamed('History');
                                          logFirebaseEvent(
                                              'Container_Update-Local-State');
                                          setState(() => FFAppState()
                                                  .ShowingDrawer =
                                              !(FFAppState().ShowingDrawer));
                                        },
                                        child: Container(
                                          width: 75,
                                          height: 75,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF7C7C7C),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10,
                                                color: Color(0xFF7C7C7C),
                                                offset: Offset(2, 5),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: InkWell(
                                            onTap: () async {
                                              logFirebaseEvent(
                                                  'Column_Navigate-To');
                                              context.pushNamed(
                                                'History',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 100),
                                                  ),
                                                },
                                              );
                                            },
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 13, 0, 0),
                                                  child: Icon(
                                                    Icons.receipt,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor1,
                                                    size: 30,
                                                  ),
                                                ),
                                                Text(
                                                  'Orders',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor1,
                                                        fontSize: 12,
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
                              ],
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
        ],
      ).animated([animationsMap['columnOnActionTriggerAnimation']]),
    );
  }
}
