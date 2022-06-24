import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/configs/my_print.dart';

class AuthenticationController {
  static AuthenticationController? _instance;

  factory AuthenticationController() {
    _instance ??= AuthenticationController._();
    return _instance!;
  }

  AuthenticationController._();

  Future<void> signUpWithEmailAndPassword(BuildContext context, String emailAddress , String password) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      MyPrint.printOnConsole("credential : $credential");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        MyPrint.printOnConsole('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        MyPrint.printOnConsole('The account already exists for that email.');
      }
    } catch (e) {
      MyPrint.printOnConsole(e);
    }

  }

  Future<void> signInWithEmailAndPassword(BuildContext context, String emailAddress , String password) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }

  }

}