import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class UserRepository {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signUp({String email, String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  bool isSignedIn() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<String> getUser() async {
    return (_firebaseAuth.currentUser.email);
  }
}
