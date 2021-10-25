import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthService {
  Future createUser(String email, String password) async {
    try {
      final auth.UserCredential response = await auth.FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      print("hay token? ${response.user?.refreshToken}");
    } catch (e) {
      print(e);
    }
  }
}
