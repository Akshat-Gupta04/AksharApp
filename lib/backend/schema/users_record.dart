import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "Primary_Lang" field.
  String? _primaryLang;
  String get primaryLang => _primaryLang ?? '';
  bool hasPrimaryLang() => _primaryLang != null;

  // "Secondary_Lang" field.
  String? _secondaryLang;
  String get secondaryLang => _secondaryLang ?? '';
  bool hasSecondaryLang() => _secondaryLang != null;

  // "Created" field.
  bool? _created;
  bool get created => _created ?? false;
  bool hasCreated() => _created != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "dateofBirth" field.
  String? _dateofBirth;
  String get dateofBirth => _dateofBirth ?? '';
  bool hasDateofBirth() => _dateofBirth != null;

  // "Age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "Gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "Walkthrough" field.
  bool? _walkthrough;
  bool get walkthrough => _walkthrough ?? false;
  bool hasWalkthrough() => _walkthrough != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _primaryLang = snapshotData['Primary_Lang'] as String?;
    _secondaryLang = snapshotData['Secondary_Lang'] as String?;
    _created = snapshotData['Created'] as bool?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _dateofBirth = snapshotData['dateofBirth'] as String?;
    _age = castToType<int>(snapshotData['Age']);
    _gender = snapshotData['Gender'] as String?;
    _walkthrough = snapshotData['Walkthrough'] as bool?;
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
  String? primaryLang,
  String? secondaryLang,
  bool? created,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? title,
  String? dateofBirth,
  int? age,
  String? gender,
  bool? walkthrough,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'Primary_Lang': primaryLang,
      'Secondary_Lang': secondaryLang,
      'Created': created,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'title': title,
      'dateofBirth': dateofBirth,
      'Age': age,
      'Gender': gender,
      'Walkthrough': walkthrough,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.primaryLang == e2?.primaryLang &&
        e1?.secondaryLang == e2?.secondaryLang &&
        e1?.created == e2?.created &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.title == e2?.title &&
        e1?.dateofBirth == e2?.dateofBirth &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.walkthrough == e2?.walkthrough;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.primaryLang,
        e?.secondaryLang,
        e?.created,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.title,
        e?.dateofBirth,
        e?.age,
        e?.gender,
        e?.walkthrough
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
