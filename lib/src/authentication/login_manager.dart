import 'package:firebase_auth/firebase_auth.dart';

class LoginManager{

  Future <void> login(String email, String password)async{ 
    final FirebaseAuth _auth = FirebaseAuth.instance;
  try{
    await _auth.signInWithEmailAndPassword(
      email:email,
      password: password,
    );
  }
  catch(e){}
  }
}