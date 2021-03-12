import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class UserRepository {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> signInWithCredentials(String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> signUp({String email, String password}) async {
    return await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logOut() async {
    return await _firebaseAuth.signOut();
  }

  Future<bool> isSignedIn() async {
    if (_firebaseAuth.currentUser == null) {
      return false;
    } else {
      await _firebaseAuth.currentUser.reload();
      return _firebaseAuth.currentUser != null;
    }
  }
}
