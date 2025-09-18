/* 
  Auth repo - outline the possible auth operation for this app 

  not implementing 

*/

import 'package:uber_eat/features/auth/domain/entities/app_user.dart';

abstract class AuthRepo {
  Future<AppUser?> loginWithEmailPassword(String email, String password);
  Future<AppUser?> registerWithEmailPassword(String email, String password,String name);
  Future<void> logout();
  Future<AppUser?> getCurrentUser();
}
