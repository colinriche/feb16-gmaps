import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page2_model.dart';
export 'home_page2_model.dart';

class HomePage2Widget extends StatefulWidget {
  const HomePage2Widget({Key? key}) : super(key: key);

  @override
  _HomePage2WidgetState createState() => _HomePage2WidgetState();
}

class _HomePage2WidgetState extends State<HomePage2Widget> {
  late HomePage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePage2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<OrdersRecord>>(
      stream: queryOrdersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<OrdersRecord> homePage2OrdersRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final homePage2OrdersRecord = homePage2OrdersRecordList.isNotEmpty
            ? homePage2OrdersRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: InkWell(
              onTap: () async {
                context.pushNamed('HomePage');
              },
              child: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                homePage2OrdersRecord!.name!,
                                style: FlutterFlowTheme.of(context).title1,
                              ),
                              Text(
                                homePage2OrdersRecord!.source!.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF111417),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Text(
                                homePage2OrdersRecord!.destination!.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF111417),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Text(
                                homePage2OrdersRecord!.timeLeft!,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF111417),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Text(
                                homePage2OrdersRecord!.distanceLeft!,
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF111417),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Some order notes…',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Color(0xFF57636C),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width: 350.0,
                                  height: 300.0,
                                  child: custom_widgets.GMapWidget2(
                                    width: 350.0,
                                    height: 300.0,
                                    ordersDocRef:
                                        homePage2OrdersRecord!.reference,
                                    ordersDoc: homePage2OrdersRecord!,
                                  ),
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
            ),
          ),
        );
      },
    );
  }
}
