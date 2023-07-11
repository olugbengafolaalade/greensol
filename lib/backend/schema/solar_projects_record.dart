import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolarProjectsRecord extends FirestoreRecord {
  SolarProjectsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price_per_cell" field.
  double? _pricePerCell;
  double get pricePerCell => _pricePerCell ?? 0.0;
  bool hasPricePerCell() => _pricePerCell != null;

  // "available_cells" field.
  double? _availableCells;
  double get availableCells => _availableCells ?? 0.0;
  bool hasAvailableCells() => _availableCells != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "c02_reduction" field.
  double? _c02Reduction;
  double get c02Reduction => _c02Reduction ?? 0.0;
  bool hasC02Reduction() => _c02Reduction != null;

  // "energy_yield" field.
  double? _energyYield;
  double get energyYield => _energyYield ?? 0.0;
  bool hasEnergyYield() => _energyYield != null;

  // "internal_return_rate" field.
  double? _internalReturnRate;
  double get internalReturnRate => _internalReturnRate ?? 0.0;
  bool hasInternalReturnRate() => _internalReturnRate != null;

  // "earning_per_cell" field.
  double? _earningPerCell;
  double get earningPerCell => _earningPerCell ?? 0.0;
  bool hasEarningPerCell() => _earningPerCell != null;

  // "bought_cells" field.
  int? _boughtCells;
  int get boughtCells => _boughtCells ?? 0;
  bool hasBoughtCells() => _boughtCells != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _pricePerCell = castToType<double>(snapshotData['price_per_cell']);
    _availableCells = castToType<double>(snapshotData['available_cells']);
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _c02Reduction = castToType<double>(snapshotData['c02_reduction']);
    _energyYield = castToType<double>(snapshotData['energy_yield']);
    _internalReturnRate =
        castToType<double>(snapshotData['internal_return_rate']);
    _earningPerCell = castToType<double>(snapshotData['earning_per_cell']);
    _boughtCells = castToType<int>(snapshotData['bought_cells']);
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('solar_projects');

  static Stream<SolarProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SolarProjectsRecord.fromSnapshot(s));

  static Future<SolarProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SolarProjectsRecord.fromSnapshot(s));

  static SolarProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SolarProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SolarProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SolarProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SolarProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SolarProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSolarProjectsRecordData({
  String? name,
  String? description,
  double? pricePerCell,
  double? availableCells,
  String? city,
  String? country,
  double? c02Reduction,
  double? energyYield,
  double? internalReturnRate,
  double? earningPerCell,
  int? boughtCells,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price_per_cell': pricePerCell,
      'available_cells': availableCells,
      'city': city,
      'country': country,
      'c02_reduction': c02Reduction,
      'energy_yield': energyYield,
      'internal_return_rate': internalReturnRate,
      'earning_per_cell': earningPerCell,
      'bought_cells': boughtCells,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class SolarProjectsRecordDocumentEquality
    implements Equality<SolarProjectsRecord> {
  const SolarProjectsRecordDocumentEquality();

  @override
  bool equals(SolarProjectsRecord? e1, SolarProjectsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.pricePerCell == e2?.pricePerCell &&
        e1?.availableCells == e2?.availableCells &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.c02Reduction == e2?.c02Reduction &&
        e1?.energyYield == e2?.energyYield &&
        e1?.internalReturnRate == e2?.internalReturnRate &&
        e1?.earningPerCell == e2?.earningPerCell &&
        e1?.boughtCells == e2?.boughtCells &&
        e1?.image == e2?.image;
  }

  @override
  int hash(SolarProjectsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.pricePerCell,
        e?.availableCells,
        e?.city,
        e?.country,
        e?.c02Reduction,
        e?.energyYield,
        e?.internalReturnRate,
        e?.earningPerCell,
        e?.boughtCells,
        e?.image
      ]);

  @override
  bool isValidKey(Object? o) => o is SolarProjectsRecord;
}
