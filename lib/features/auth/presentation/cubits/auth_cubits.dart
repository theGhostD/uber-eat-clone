/*
Auth Cubit : State management

*/

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uber_eat/features/auth/domain/entities/app_user.dart';
import 'package:uber_eat/features/auth/domain/repository/auth_repo.dart';
import 'package:uber_eat/features/auth/presentation/cubits/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  final AuthRepo authRepo;
  AppUser? _currentUser;

  AuthCubit({required this.authRepo}) : super(AuthInitial());

  // check if user is already authenticated

  void checkAuth() async {
    final AppUser? user = await authRepo.getCurrentUser();

    if (user != null) {
      _currentUser = user;
      emit(Authenticated(user: user));
    } else {
      emit(UnAuthenticated());
    }
  }

  // get current user
  AppUser? get currentuser => _currentUser;

  // login with email + pw
  Future<void> login(String email, String pw) async {
    try {
      emit(AuthLoading());
      final user = await authRepo.loginWithEmailPassword(email, pw);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user: user));
      } else {
        emit(UnAuthenticated());
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
  
  
  // register 

   Future<void> register(String name, String email, String pw) async {
    try {
      emit(AuthLoading());
      final user = await authRepo.registerWithEmailPassword(email, pw,name);
      if (user != null) {
        _currentUser = user;
        emit(Authenticated(user: user));
      } else {
        emit(UnAuthenticated());
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

// logout 

Future<void> logout() async{
  authRepo.logout();
  emit(UnAuthenticated());
}

}




