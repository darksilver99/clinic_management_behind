// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageDataStruct extends FFFirebaseStruct {
  ImageDataStruct({
    int? id,
    String? url,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _url = url,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  static ImageDataStruct fromMap(Map<String, dynamic> data) => ImageDataStruct(
        id: castToType<int>(data['id']),
        url: data['url'] as String?,
      );

  static ImageDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageDataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageDataStruct && id == other.id && url == other.url;
  }

  @override
  int get hashCode => const ListEquality().hash([id, url]);
}

ImageDataStruct createImageDataStruct({
  int? id,
  String? url,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageDataStruct(
      id: id,
      url: url,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageDataStruct? updateImageDataStruct(
  ImageDataStruct? imageData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    imageData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addImageDataStructData(
  Map<String, dynamic> firestoreData,
  ImageDataStruct? imageData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (imageData == null) {
    return;
  }
  if (imageData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && imageData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageDataData = getImageDataFirestoreData(imageData, forFieldValue);
  final nestedData = imageDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = imageData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageDataFirestoreData(
  ImageDataStruct? imageData, [
  bool forFieldValue = false,
]) {
  if (imageData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(imageData.toMap());

  // Add any Firestore field values
  imageData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageDataListFirestoreData(
  List<ImageDataStruct>? imageDatas,
) =>
    imageDatas?.map((e) => getImageDataFirestoreData(e, true)).toList() ?? [];
