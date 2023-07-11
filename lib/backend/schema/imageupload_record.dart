import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageuploadRecord extends FirestoreRecord {
  ImageuploadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('imageupload');

  static Stream<ImageuploadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImageuploadRecord.fromSnapshot(s));

  static Future<ImageuploadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImageuploadRecord.fromSnapshot(s));

  static ImageuploadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ImageuploadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImageuploadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImageuploadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImageuploadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImageuploadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImageuploadRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImageuploadRecordDocumentEquality implements Equality<ImageuploadRecord> {
  const ImageuploadRecordDocumentEquality();

  @override
  bool equals(ImageuploadRecord? e1, ImageuploadRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(ImageuploadRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is ImageuploadRecord;
}
