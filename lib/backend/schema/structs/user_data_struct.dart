// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends FFFirebaseStruct {
  UserDataStruct({
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    String? photo,
    String? token,
    int? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _phone = phone,
        _photo = photo,
        _token = token,
        _id = id,
        super(firestoreUtilData);

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  set photo(String? val) => _photo = val;

  bool hasPhoto() => _photo != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        photo: data['photo'] as String?,
        token: data['token'] as String?,
        id: castToType<int>(data['id']),
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'phone': _phone,
        'photo': _photo,
        'token': _token,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'photo': serializeParam(
          _photo,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        photo: deserializeParam(
          data['photo'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        photo == other.photo &&
        token == other.token &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([firstName, lastName, email, phone, photo, token, id]);
}

UserDataStruct createUserDataStruct({
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  String? photo,
  String? token,
  int? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserDataStruct(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      photo: photo,
      token: token,
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserDataStruct? updateUserDataStruct(
  UserDataStruct? userData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserDataStructData(
  Map<String, dynamic> firestoreData,
  UserDataStruct? userData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userData == null) {
    return;
  }
  if (userData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userDataData = getUserDataFirestoreData(userData, forFieldValue);
  final nestedData = userDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserDataFirestoreData(
  UserDataStruct? userData, [
  bool forFieldValue = false,
]) {
  if (userData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userData.toMap());

  // Add any Firestore field values
  userData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserDataListFirestoreData(
  List<UserDataStruct>? userDatas,
) =>
    userDatas?.map((e) => getUserDataFirestoreData(e, true)).toList() ?? [];
