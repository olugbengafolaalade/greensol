import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchasesRecord extends FirestoreRecord {
  PurchasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "cells" field.
  int? _cells;
  int get cells => _cells ?? 0;
  bool hasCells() => _cells != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "solar_project_ref" field.
  DocumentReference? _solarProjectRef;
  DocumentReference? get solarProjectRef => _solarProjectRef;
  bool hasSolarProjectRef() => _solarProjectRef != null;

  void _initializeFields() {
    _amount = castToType<double>(snapshotData['amount']);
    _cells = castToType<int>(snapshotData['cells']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _solarProjectRef = snapshotData['solar_project_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('purchases');

  static Stream<PurchasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PurchasesRecord.fromSnapshot(s));

  static Future<PurchasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PurchasesRecord.fromSnapshot(s));

  static PurchasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PurchasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PurchasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PurchasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PurchasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PurchasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPurchasesRecordData({
  double? amount,
  int? cells,
  DocumentReference? userRef,
  DocumentReference? solarProjectRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'cells': cells,
      'user_ref': userRef,
      'solar_project_ref': solarProjectRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class PurchasesRecordDocumentEquality implements Equality<PurchasesRecord> {
  const PurchasesRecordDocumentEquality();

  @override
  bool equals(PurchasesRecord? e1, PurchasesRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.cells == e2?.cells &&
        e1?.userRef == e2?.userRef &&
        e1?.solarProjectRef == e2?.solarProjectRef;
  }

  @override
  int hash(PurchasesRecord? e) => const ListEquality()
      .hash([e?.amount, e?.cells, e?.userRef, e?.solarProjectRef]);

  @override
  bool isValidKey(Object? o) => o is PurchasesRecord;
}
