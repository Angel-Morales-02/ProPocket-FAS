import '/auth/firebase_auth/auth_util.dart';
import '/components/anadir_movimiento_widget.dart';
import '/components/meta_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: const AnadirMovimientoWidget(),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          },
          backgroundColor: FlutterFlowTheme.of(context).ecru,
          elevation: 8.0,
          child: Icon(
            Icons.add_rounded,
            color: FlutterFlowTheme.of(context).charcoal,
            size: 24.0,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Bienvenido',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).charcoal,
                                letterSpacing: 0.0,
                              ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/Cartera[1].png',
                          width: 101.0,
                          height: 46.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(1.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const MetaWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Icon(
                            Icons.golf_course_sharp,
                            color: FlutterFlowTheme.of(context).charcoal,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Container(
                            width: 350.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).prussianBlue,
                              borderRadius: BorderRadius.circular(24.0),
                              border: Border.all(
                                color: Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Icon(
                                  Icons.monetization_on_outlined,
                                  color: Color(0xFFF8F3F3),
                                  size: 30.0,
                                ),
                                AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    formatNumber(
                                      valueOrDefault(
                                          currentUserDocument?.dinerototal,
                                          0.0),
                                      formatType: FormatType.custom,
                                      format: '\$0.0',
                                      locale: '',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.white,
                                          fontSize: 40.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Text(
                                  'Dinero Total',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          child: Container(
                            width: 350.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(24.0),
                              border: Border.all(
                                color: Colors.transparent,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                if (valueOrDefault(
                                        currentUserDocument?.dinerometa, 0.0) !=
                                    0.0)
                                  AuthUserStreamWidget(
                                    builder: (context) => Icon(
                                      Icons.golf_course_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).charcoal,
                                      size: 30.0,
                                    ),
                                  ),
                                if (valueOrDefault(
                                        currentUserDocument?.dinerometa, 0.0) !=
                                    0.0)
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      formatNumber(
                                        valueOrDefault(
                                            currentUserDocument?.dinerometa,
                                            0.0),
                                        formatType: FormatType.custom,
                                        format: '\$0.0',
                                        locale: '',
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .charcoal,
                                            fontSize: 36.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                if (valueOrDefault(
                                        currentUserDocument?.dinerometa, 0.0) !=
                                    0.0)
                                  AuthUserStreamWidget(
                                    builder: (context) => Text(
                                      'Dinero Objetivo',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            color: FlutterFlowTheme.of(context)
                                                .charcoal,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                if ((valueOrDefault(
                                            currentUserDocument?.dinerometa,
                                            0.0) ==
                                        0.0) ||
                                    (valueOrDefault(
                                            currentUserDocument?.dinerometa,
                                            0.0) ==
                                        null))
                                  AuthUserStreamWidget(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .unfocus(),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: const MetaWidget(),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      text: 'Poner Meta',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFFE7CB6E),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .prussianBlue,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(24.0),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.trending_up,
                                color: Color(0xFF28A300),
                                size: 30.0,
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  formatNumber(
                                    valueOrDefault(
                                        currentUserDocument?.ingresos, 0.0),
                                    formatType: FormatType.custom,
                                    format: '\$0.0',
                                    locale: '',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFF28A300),
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Text(
                                'Ingresos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).charcoal,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Container(
                          width: 170.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(24.0),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 2.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Icon(
                                Icons.trending_down,
                                color: Color(0xFFA10000),
                                size: 30.0,
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  formatNumber(
                                    valueOrDefault(
                                        currentUserDocument?.gastos, 0.0),
                                    formatType: FormatType.custom,
                                    format: '\$0.0',
                                    locale: '',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: const Color(0xFFA10000),
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Text(
                                'Gastos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Inter',
                                      color:
                                          FlutterFlowTheme.of(context).charcoal,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ].divide(const SizedBox(height: 9.0)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Movimientos',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).charcoal,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    AuthUserStreamWidget(
                      builder: (context) => Builder(
                        builder: (context) {
                          final movimientos =
                              (currentUserDocument?.movimientos.toList() ?? [])
                                  .toList();

                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(movimientos.length,
                                (movimientosIndex) {
                              final movimientosItem =
                                  movimientos[movimientosIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (movimientosItem.fecha ==
                                              _model.fechaelegida) {
                                            _model.fechaelegida = null;
                                            safeSetState(() {});
                                            return;
                                          } else {
                                            _model.fechaelegida =
                                                movimientosItem.fecha;
                                            safeSetState(() {});
                                            return;
                                          }
                                        },
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              border: Border.all(
                                                color: Colors.transparent,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 60.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              if (movimientosItem
                                                                      .esingreso ==
                                                                  true)
                                                                const Icon(
                                                                  Icons
                                                                      .trending_up,
                                                                  color: Color(
                                                                      0xFF28A300),
                                                                  size: 30.0,
                                                                ),
                                                              if (movimientosItem
                                                                      .esingreso ==
                                                                  false)
                                                                const Icon(
                                                                  Icons
                                                                      .trending_down,
                                                                  color: Color(
                                                                      0xFFA10000),
                                                                  size: 30.0,
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              formatNumber(
                                                                movimientosItem
                                                                    .dinero,
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                format: '\$0.0',
                                                                locale: '',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: movimientosItem.esingreso ==
                                                                            true
                                                                        ? const Color(
                                                                            0xFF28A300)
                                                                        : const Color(
                                                                            0xFFA10000),
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Text(
                                                              '${movimientosItem.esingreso == true ? 'Ingreso' : 'Gasto'} del día ${dateTimeFormat("d/M/y", movimientosItem.fecha)}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 16.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .arrow_forward_ios_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .charcoal,
                                                    size: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (_model.fechaelegida ==
                                        movimientosItem.fecha)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 8.0, 16.0, 0.0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 4.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Container(
                                            constraints: const BoxConstraints(
                                              maxWidth: 300.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                              border: Border.all(
                                                color: Colors.transparent,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      8.0, 16.0, 8.0, 16.0),
                                              child: Text(
                                                movimientosItem.motivo,
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .charcoal,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
