import 'package:cloud_firestore/cloud_firestore.dart';

class Todo{
  final String id;
  final String baslik;
  final String aciklama;
  final bool tamamlandi;
  final Timestamp timeStamp;

  Todo(
    {required this.id,
    required this.baslik,
    required this.aciklama,
    required this.tamamlandi,
    required this.timeStamp,});
}