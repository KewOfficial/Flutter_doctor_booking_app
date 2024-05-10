import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class RegisterationManager{
 final FirebaseAuth _auth = FirebaseAuth.instance;
 final FirebaseFirestore _firestore=FirebaseFirestore.instance;

Future <void> register( String email, String password)async{
try{
  await _auth.createUserWithEmailAndPassword(
    email: email,
    password:password,
  );
  User? user = _auth.currentUser;
  await user?.sendEmailVerification();
  await _firestore.collection('users').doc(user?.uid).set({
    'email': email
  });
}
catch (e){
  
}
}


}