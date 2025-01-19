import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/model/todo_model.dart';
import 'package:todo_app/services/veritabani.dart';

class Tamamlanmis extends StatefulWidget {
  const Tamamlanmis({super.key});

  @override
  State<Tamamlanmis> createState() => _TamamlanmisState();
}

class _TamamlanmisState extends State<Tamamlanmis> {
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
      stream: _databaseService.completedtodos,
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
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Slidable(
                  key: ValueKey(todo.id),
                  endActionPane: ActionPane(motion: DrawerMotion(), 
                  children: [
                    SlidableAction(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: "Sil",
                      onPressed: (context)async{
                      await _databaseService.todoSil(todo.id);
                    }),
                  ],
                  ),
                  
                  child: ListTile(
                    title: Text(todo.baslik,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                    ),
                    ),
                    subtitle: Text(todo.aciklama,
                    style: TextStyle(),
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

}