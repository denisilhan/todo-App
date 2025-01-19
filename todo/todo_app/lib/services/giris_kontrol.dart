import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class girisKontrol {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //giriş

  Future<User?> girisEmailSifre(String email, String password)async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password,);
      User? user = result.user;
      return user;
    }
    catch(e) {
      print(e.toString());
      return null;
    }
  }
 // Kayıt ol
 Future<User?> kayitEmailSifre(String email, String password)async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password,);
      User? user = result.user;
      return user;
    }
    catch(e) {
      print(e.toString());
      return null;
    }
  }

  // Çıkış

  Future<void> signOut() async{
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}



