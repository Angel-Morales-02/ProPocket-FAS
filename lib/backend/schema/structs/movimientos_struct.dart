// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MovimientosStruct extends FFFirebaseStruct {
  MovimientosStruct({
    double? dinero,
    bool? esingreso,
    DateTime? fecha,
    String? motivo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dinero = dinero,
        _esingreso = esingreso,
        _fecha = fecha,
        _motivo = motivo,
        super(firestoreUtilData);

  // "dinero" field.
  double? _dinero;
  double get dinero => _dinero ?? 0.0;
  set dinero(double? val) => _dinero = val;

  void incrementDinero(double amount) => dinero = dinero + amount;

  bool hasDinero() => _dinero != null;

  // "esingreso" field.
  bool? _esingreso;
  bool get esingreso => _esingreso ?? false;
  set esingreso(bool? val) => _esingreso = val;

  bool hasEsingreso() => _esingreso != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;

  bool hasFecha() => _fecha != null;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  set motivo(String? val) => _motivo = val;

  bool hasMotivo() => _motivo != null;

  static MovimientosStruct fromMap(Map<String, dynamic> data) =>
      MovimientosStruct(
        dinero: castToType<double>(data['dinero']),
        esingreso: data['esingreso'] as bool?,
        fecha: data['fecha'] as DateTime?,
        motivo: data['motivo'] as String?,
      );

  static MovimientosStruct? maybeFromMap(dynamic data) => data is Map
      ? MovimientosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dinero': _dinero,
        'esingreso': _esingreso,
        'fecha': _fecha,
        'motivo': _motivo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dinero': serializeParam(
          _dinero,
          ParamType.double,
        ),
        'esingreso': serializeParam(
          _esingreso,
          ParamType.bool,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'motivo': serializeParam(
          _motivo,
          ParamType.String,
        ),
      }.withoutNulls;

  static MovimientosStruct fromSerializableMap(Map<String, dynamic> data) =>
      MovimientosStruct(
        dinero: deserializeParam(
          data['dinero'],
          ParamType.double,
          false,
        ),
        esingreso: deserializeParam(
          data['esingreso'],
          ParamType.bool,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        motivo: deserializeParam(
          data['motivo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MovimientosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MovimientosStruct &&
        dinero == other.dinero &&
        esingreso == other.esingreso &&
        fecha == other.fecha &&
        motivo == other.motivo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dinero, esingreso, fecha, motivo]);
}

MovimientosStruct createMovimientosStruct({
  double? dinero,
  bool? esingreso,
  DateTime? fecha,
  String? motivo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MovimientosStruct(
      dinero: dinero,
      esingreso: esingreso,
      fecha: fecha,
      motivo: motivo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MovimientosStruct? updateMovimientosStruct(
  MovimientosStruct? movimientos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    movimientos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMovimientosStructData(
  Map<String, dynamic> firestoreData,
  MovimientosStruct? movimientos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (movimientos == null) {
    return;
  }
  if (movimientos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && movimientos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final movimientosData =
      getMovimientosFirestoreData(movimientos, forFieldValue);
  final nestedData =
      movimientosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = movimientos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMovimientosFirestoreData(
  MovimientosStruct? movimientos, [
  bool forFieldValue = false,
]) {
  if (movimientos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(movimientos.toMap());

  // Add any Firestore field values
  movimientos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMovimientosListFirestoreData(
  List<MovimientosStruct>? movimientoss,
) =>
    movimientoss?.map((e) => getMovimientosFirestoreData(e, true)).toList() ??
    [];
