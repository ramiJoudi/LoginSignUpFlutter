// ignore: import_of_legacy_library_into_null_safe
import 'package:firebase_auth/firebase_auth.dart'
    show FirebaseAuth, User, UserCredential;
import 'package:xdtflutter/DatabaseManager/DatabaseManager.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //registration with email and password
  Future createNewUser(
      String name, String email, String password, String? imageUrl) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      await DatabaseManager()
          .createUserData(name, 'Male', 100, user.uid, imageUrl);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

// sign with email and password

  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }
}
