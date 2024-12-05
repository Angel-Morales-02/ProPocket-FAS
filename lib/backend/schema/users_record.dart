import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "dinerototal" field.
  double? _dinerototal;
  double get dinerototal => _dinerototal ?? 0.0;
  bool hasDinerototal() => _dinerototal != null;

  // "ingresos" field.
  double? _ingresos;
  double get ingresos => _ingresos ?? 0.0;
  bool hasIngresos() => _ingresos != null;

  // "gastos" field.
  double? _gastos;
  double get gastos => _gastos ?? 0.0;
  bool hasGastos() => _gastos != null;

  // "movimientos" field.
  List<MovimientosStruct>? _movimientos;
  List<MovimientosStruct> get movimientos => _movimientos ?? const [];
  bool hasMovimientos() => _movimientos != null;

  // "dinerometa" field.
  double? _dinerometa;
  double get dinerometa => _dinerometa ?? 0.0;
  bool hasDinerometa() => _dinerometa != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _dinerototal = castToType<double>(snapshotData['dinerototal']);
    _ingresos = castToType<double>(snapshotData['ingresos']);
    _gastos = castToType<double>(snapshotData['gastos']);
    _movimientos = getStructList(
      snapshotData['movimientos'],
      MovimientosStruct.fromMap,
    );
    _dinerometa = castToType<double>(snapshotData['dinerometa']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  double? dinerototal,
  double? ingresos,
  double? gastos,
  double? dinerometa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'dinerototal': dinerototal,
      'ingresos': ingresos,
      'gastos': gastos,
      'dinerometa': dinerometa,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.dinerototal == e2?.dinerototal &&
        e1?.ingresos == e2?.ingresos &&
        e1?.gastos == e2?.gastos &&
        listEquality.equals(e1?.movimientos, e2?.movimientos) &&
        e1?.dinerometa == e2?.dinerometa;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.dinerototal,
        e?.ingresos,
        e?.gastos,
        e?.movimientos,
        e?.dinerometa
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
