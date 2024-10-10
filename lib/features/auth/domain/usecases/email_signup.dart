import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/auth/domain/model/auth_response.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class EmailSignupUseCase implements UseCase<AuthResponse, EmailSignupParams> {
  final AuthRepository repository;

  EmailSignupUseCase(this.repository);

  @override
  Future<Either<Failure, AuthResponse>> call(EmailSignupParams params) {
    return repository.signUpWithEmail(
      email: params.email,
      password: params.password,
      fullName: params.name,
      phoneNumber: params.phone,
    );
  }
}

class EmailSignupParams {
  final String email;
  final String password;
  final String name;
  final String phone;

  EmailSignupParams({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
  });
}
