// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GeneralDataStruct extends FFFirebaseStruct {
  GeneralDataStruct({
    int? status,
    int? isRecommend,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _isRecommend = isRecommend,
        super(firestoreUtilData);

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "is_recommend" field.
  int? _isRecommend;
  int get isRecommend => _isRecommend ?? 0;
  set isRecommend(int? val) => _isRecommend = val;

  void incrementIsRecommend(int amount) => isRecommend = isRecommend + amount;

  bool hasIsRecommend() => _isRecommend != null;

  static GeneralDataStruct fromMap(Map<String, dynamic> data) =>
      GeneralDataStruct(
        status: castToType<int>(data['status']),
        isRecommend: castToType<int>(data['is_recommend']),
      );

  static GeneralDataStruct? maybeFromMap(dynamic data) => data is Map
      ? GeneralDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'is_recommend': _isRecommend,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'is_recommend': serializeParam(
          _isRecommend,
          ParamType.int,
        ),
      }.withoutNulls;

  static GeneralDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      GeneralDataStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        isRecommend: deserializeParam(
          data['is_recommend'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GeneralDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GeneralDataStruct &&
        status == other.status &&
        isRecommend == other.isRecommend;
  }

  @override
  int get hashCode => const ListEquality().hash([status, isRecommend]);
}

GeneralDataStruct createGeneralDataStruct({
  int? status,
  int? isRecommend,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GeneralDataStruct(
      status: status,
      isRecommend: isRecommend,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GeneralDataStruct? updateGeneralDataStruct(
  GeneralDataStruct? generalData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    generalData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGeneralDataStructData(
  Map<String, dynamic> firestoreData,
  GeneralDataStruct? generalData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (generalData == null) {
    return;
  }
  if (generalData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && generalData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final generalDataData =
      getGeneralDataFirestoreData(generalData, forFieldValue);
  final nestedData =
      generalDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = generalData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGeneralDataFirestoreData(
  GeneralDataStruct? generalData, [
  bool forFieldValue = false,
]) {
  if (generalData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(generalData.toMap());

  // Add any Firestore field values
  generalData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGeneralDataListFirestoreData(
  List<GeneralDataStruct>? generalDatas,
) =>
    generalDatas?.map((e) => getGeneralDataFirestoreData(e, true)).toList() ??
    [];
