import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Ana_ekran.dart';
import 'package:todo_app/giris_ekran.dart';
import 'package:todo_app/kayit_ekran.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo",
      theme: ThemeData(primarySwatch: Colors.indigo, primaryColor: Colors.indigo ),
      home: _auth.currentUser != null ? AnaEkran() : GirisEkrani(),
    );
  }
}
