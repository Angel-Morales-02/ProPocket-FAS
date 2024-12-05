import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'anadir_movimiento_model.dart';
export 'anadir_movimiento_model.dart';

class AnadirMovimientoWidget extends StatefulWidget {
  const AnadirMovimientoWidget({super.key});

  @override
  State<AnadirMovimientoWidget> createState() => _AnadirMovimientoWidgetState();
}

class _AnadirMovimientoWidgetState extends State<AnadirMovimientoWidget> {
  late AnadirMovimientoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnadirMovimientoModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Material(
          color: Colors.transparent,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(
                color: Colors.transparent,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'Crea Movimiento...',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Inter Tight',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowChoiceChips(
                        options: const [
                          ChipData('Ingreso', Icons.trending_up),
                          ChipData('Gasto', Icons.trending_down)
                        ],
                        onChanged: (val) => safeSetState(
                            () => _model.choiceChipsValue = val?.firstOrNull),
                        selectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).blueGreen,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                          iconColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          iconSize: 16.0,
                          elevation: 0.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 16.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        chipSpacing: 8.0,
                        rowSpacing: 8.0,
                        multiselect: false,
                        initialized: _model.choiceChipsValue != null,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          ['Ingreso'],
                        ),
                        wrapped: true,
                      ),
                      SizedBox(
                        width: 300.0,
                        child: TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Cantidad...',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'TextField',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textController1Validator
                              .asValidator(context),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Motivo',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'TextField',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                        maxLines: 3,
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ].divide(const SizedBox(height: 16.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 16.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if ((_model.textController1.text != '') &&
                          (_model.textController2.text != '') &&
                          (_model.choiceChipsValue != null &&
                              _model.choiceChipsValue != '')) {
                        if (_model.choiceChipsValue == 'Ingreso') {
                          await currentUserReference!.update({
                            ...mapToFirestore(
                              {
                                'dinerototal': FieldValue.increment(
                                    double.parse(_model.textController1.text)),
                                'ingresos': FieldValue.increment(
                                    double.parse(_model.textController1.text)),
                                'movimientos': FieldValue.arrayUnion([
                                  getMovimientosFirestoreData(
                                    updateMovimientosStruct(
                                      MovimientosStruct(
                                        dinero: double.tryParse(
                                            _model.textController1.text),
                                        esingreso:
                                            _model.choiceChipsValue == 'Ingreso'
                                                ? true
                                                : false,
                                        fecha: getCurrentTimestamp,
                                        motivo: _model.textController2.text,
                                      ),
                                      clearUnsetFields: false,
                                    ),
                                    true,
                                  )
                                ]),
                              },
                            ),
                          });
                          Navigator.pop(context);
                          return;
                        } else {
                          if ((valueOrDefault(
                                      currentUserDocument?.dinerototal, 0.0) -
                                  double.parse(_model.textController1.text)) <=
                              0.0) {
                            await currentUserReference!.update({
                              ...createUsersRecordData(
                                dinerototal: 0.0,
                              ),
                              ...mapToFirestore(
                                {
                                  'movimientos': FieldValue.arrayUnion([
                                    getMovimientosFirestoreData(
                                      updateMovimientosStruct(
                                        MovimientosStruct(
                                          dinero: double.tryParse(
                                              _model.textController1.text),
                                          esingreso: _model.choiceChipsValue ==
                                                  'Ingreso'
                                              ? true
                                              : false,
                                          fecha: getCurrentTimestamp,
                                          motivo: _model.textController2.text,
                                        ),
                                        clearUnsetFields: false,
                                      ),
                                      true,
                                    )
                                  ]),
                                  'gastos': FieldValue.increment(double.parse(
                                      _model.textController1.text)),
                                },
                              ),
                            });
                            Navigator.pop(context);
                            return;
                          } else {
                            await currentUserReference!.update({
                              ...mapToFirestore(
                                {
                                  'dinerototal': FieldValue.increment(
                                      -(double.parse(
                                          _model.textController1.text))),
                                  'movimientos': FieldValue.arrayUnion([
                                    getMovimientosFirestoreData(
                                      updateMovimientosStruct(
                                        MovimientosStruct(
                                          dinero: double.tryParse(
                                              _model.textController1.text),
                                          esingreso: _model.choiceChipsValue ==
                                                  'Ingreso'
                                              ? true
                                              : false,
                                          fecha: getCurrentTimestamp,
                                          motivo: _model.textController2.text,
                                        ),
                                        clearUnsetFields: false,
                                      ),
                                      true,
                                    )
                                  ]),
                                  'gastos': FieldValue.increment(double.parse(
                                      _model.textController1.text)),
                                },
                              ),
                            });
                            Navigator.pop(context);
                            return;
                          }
                        }
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('No se ha llenado correctamente'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        return;
                      }
                    },
                    text: 'Realizar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).prussianBlue,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Inter Tight',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
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
