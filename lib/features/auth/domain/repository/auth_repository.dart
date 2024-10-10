import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/features/auth/domain/model/auth_response.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, AuthResponse>> signInWithEmail(
      {required String email, required String password});
  Future<Either<Failure, AuthResponse>> signUpWithEmail({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  });
  Future<Either<Failure, AuthResponse>> signInWithGoogle();
  Future<Either<Failure, AuthResponse>> signInWithFacebook();
  Future<Either<Failure, AuthResponse>> signInWithInstagram();
  Future<Either<Failure, bool>> forgetPassword(String email);
  Future<Either<Failure, bool>> signOut();
  Future<Either<Failure, bool>> userAuthenticated();
}
