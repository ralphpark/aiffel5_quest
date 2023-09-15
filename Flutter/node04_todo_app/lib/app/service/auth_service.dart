


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

Future<void> loginWithEmailAndPassword(FirebaseAuth auth,String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
        email: email, password: password);
    User? user = userCredential.user;
  }
  catch (e) {
    print('Login Failed: $e');
  }
}

Future<void> logOut(BuildContext context, FirebaseAuth auth) async {
  try{
    await auth.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }catch(e){
    print('Logout Failed: $e');
  }
}