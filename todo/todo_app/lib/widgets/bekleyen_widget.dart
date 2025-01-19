import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/model/todo_model.dart';
import 'package:todo_app/services/veritabani.dart';

class BekleyenWidget extends StatefulWidget {
  const BekleyenWidget({super.key});

  @override
  State<BekleyenWidget> createState() => _BekleyenWidgetState();
}

class _BekleyenWidgetState extends State<BekleyenWidget> {
  User? user = FirebaseAuth.instance.currentUser;
  late String uid;

  final Veritabani _databaseService = Veritabani();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
  }
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Todo>>(
      stream: _databaseService.todos,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          List<Todo> todos = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: todos.length,
            itemBuilder: (context, index) {
              Todo todo = todos[index];
              final DateTime dt = todo.timeStamp.toDate();
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Slidable(
                  key: ValueKey(todo.id),
                  endActionPane: ActionPane(motion: DrawerMotion(), 
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      icon: Icons.done,
                      label: "İşaretle",
                      onPressed: (context){
                      _databaseService.todoguncelle(todo.id, true);
                    })
                  ],
                  ),
                  startActionPane: ActionPane(motion: DrawerMotion(), 
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                      label: "Düzenle",
                      onPressed: (context){
                      _showTaskDialog(context, todo: todo);
                    }),
                    SlidableAction(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: "Sil",
                      onPressed: (context) async{
                      await _databaseService.todoSil(todo.id);
                    })
                  ],
                  ),
                  child: ListTile(
                    title: Text(todo.baslik,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    subtitle: Text(todo.aciklama,
                    
                    ),
                    trailing: Text('${dt.day}/${dt.month}/${dt.year}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
              );
            },
          );
        }else{
          return Center(child: CircularProgressIndicator(color: Colors.white));
        }
      },
    );
  }

  void _showTaskDialog(BuildContext context, {Todo? todo}){
    final TextEditingController _titleController = TextEditingController(text: todo?.baslik);
    final TextEditingController _descriptionController = TextEditingController(text: todo?.aciklama);
    final Veritabani _databaseService = Veritabani();

    showDialog(context: context, 
    builder: (context){
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text(todo == null ? "Görev Ekle" : "Görev Düzenle",
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
        ),
        content: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    labelText: "Başlık",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    labelText: "Açıklama",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, 
          child: Text("İptal"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
            ),
            onPressed: ()async{
            if (todo == null){
              await _databaseService.addTodoTask(_titleController.text, _descriptionController.text);
            }
            else{
              await _databaseService.updateTodo(todo.id, _titleController.text, _descriptionController.text);
            }
            Navigator.pop(context);
          }, child: Text(todo == null ? "Ekle" : "Güncelle"),
          ),
        ],
      );
    },
    );
  }
}