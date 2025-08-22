import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseAuthService {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthService(this._firebaseAuth);
  Future<void> loginWithEmail(String email, String password) async {
    try {
      final _ = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        if (kDebugMode) {
          print('The password provided is too weak.');
        }
      } else if (e.code == 'email-already-in-use') {
        if (kDebugMode) {
          print('The account already exists for that email.');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future<void> loginWithGoogle() async {
    final GoogleAuthProvider googleProvider = GoogleAuthProvider();
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithPopup(
        googleProvider,
      );
      if (kDebugMode) {
        print('User logged in: ${userCredential.user?.email}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error during Google login: $e');
      }
    }
  }

  Future<void> logout() async {
    try {
      await _firebaseAuth.signOut();
      if (kDebugMode) {
        print('User logged out successfully');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error during logout: $e');
      }
    }
  }

  Future<void> forgetPassword(String code) async {
    try {
      await _firebaseAuth.verifyPasswordResetCode(code);
    } catch (e) {
      if (kDebugMode) {
        print('Error sending password reset email: $e');
      }
    }
  }
}
