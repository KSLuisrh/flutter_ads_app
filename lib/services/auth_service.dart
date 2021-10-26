import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  bool isAuth = false;

  AuthService() {
    isUserAuth();
  }

  Future<bool?> createUser(String email, String password) async {
    try {
      final auth.UserCredential response = await auth.FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      if (response.user != null) {
        print("Register user: ${response.user}");
        return true;
      }
      return false;
    } catch (e) {
      print(e);
    }
  }

  Future authUser(String email, String password) async {
    try {
      final auth.UserCredential response = await auth.FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (response.user != null) {
        print("login user: ${response.user}");
        isAuth = true;
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> isUserAuth() async {
    auth.FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        // print(auth.FirebaseAuth.instance.currentUser!.uid);
        isAuth = true;
        notifyListeners();
      }
    });
  }

  void logOut() {
    try {
      auth.FirebaseAuth.instance.signOut().then((value) {
        isAuth = false;
        notifyListeners();
      });
    } catch (e) {
      print(e);
    }
  }
}
