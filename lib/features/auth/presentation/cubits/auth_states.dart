import 'package:uber_eat/features/auth/domain/entities/app_user.dart';

abstract class AuthStates {}

// initial
class AuthInitial extends AuthStates {}

// loading
class AuthLoading extends AuthStates {}

// Authenticated
class Authenticated extends AuthStates {
  final AppUser user;
  Authenticated({required this.user});
}

// unAuthenticated
class UnAuthenticated extends AuthStates {}

// errors
class AuthError extends AuthStates {
  final String message;
  AuthError({required this.message});
}
