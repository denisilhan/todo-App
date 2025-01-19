import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/model/todo_model.dart';

class Veritabani {
  final CollectionReference todoCollection = FirebaseFirestore.instance.collection("todos");

  User? user = FirebaseAuth.instance.currentUser;

  // Todo ekleme 
  Future<DocumentReference> addTodoTask(String title, String description)async{
    return await todoCollection.add({
      'uid' : user!.uid,
      'title': title,
      'description': description,
      'completed': false,
      'createdAt':FieldValue.serverTimestamp(),
    });
  }
// Todo task Güncelleme
Future<void> updateTodo(String id, String title, String description)async{
  final updatetodoCollection = FirebaseFirestore.instance.collection("todos").doc(id);

  return await updatetodoCollection.update({
    'title': title,
    'description': description,
  });
}

 //todo status güncelleme
 Future<void> todoguncelle(String id, bool completed)async{
  return await todoCollection.doc(id).update({'completed':completed});
 } 
// todo task silme
 Future<void> todoSil(String id) async{
  return await todoCollection.doc(id).delete();
 } 
// görevleri al
 Stream <List<Todo>> get todos {
  return todoCollection.where('uid', isEqualTo: user!.uid).where('completed', isEqualTo: false).snapshots().map(_todoListFromSnapshot);
  
 }
// tamamlanmış görevleri al
  Stream <List<Todo>> get completedtodos {
  return todoCollection.where('uid', isEqualTo: user!.uid).where('completed', isEqualTo: true).snapshots().map(_todoListFromSnapshot);
  
 }

 List<Todo> _todoListFromSnapshot(QuerySnapshot snapshot){
  return snapshot.docs.map((doc){
    return Todo(id: doc.id, 
    baslik: doc['title'] ?? '', 
    aciklama: doc['description'] ?? '', 
    tamamlandi: doc['completed'] ?? '', 
    timeStamp: doc['createdAt'] ?? '');
  }).toList();
 }

}