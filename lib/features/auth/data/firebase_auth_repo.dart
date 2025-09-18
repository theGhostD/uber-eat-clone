import 'package:firebase_auth/firebase_auth.dart';
import 'package:uber_eat/features/auth/domain/entities/app_user.dart';
import 'package:uber_eat/features/auth/domain/repository/auth_repo.dart';

// we are gonna implement the methods define in the auth repo
class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<AppUser?> loginWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      AppUser user = AppUser(
        email: email,
        name: '',
        phoneNumber: '',
        uid: userCredential.user!.uid,
      );
      return user;
    } catch (e) {
      throw Exception('Login Failed $e');
    }
  }

  @override
  Future<AppUser?> registerWithEmailPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      AppUser user = AppUser(
        email: email,
        name: name,
        phoneNumber: '',
        uid: userCredential.user!.uid,
      );
      return user;
    } catch (e) {
      throw Exception('Login Failed $e');
    }
  }

  @override
  Future<void> logout() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<AppUser?> getCurrentUser() async {
    User userCredential = firebaseAuth.currentUser!;

    if (userCredential == null) {
      return null;
    }

    return AppUser(
      email: userCredential.email!,
      name: '',
      phoneNumber: '',
      uid: userCredential.uid,
    );
  }
}
