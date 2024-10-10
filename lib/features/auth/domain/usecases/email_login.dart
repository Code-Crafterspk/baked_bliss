import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/auth/domain/model/auth_response.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class EmailLoginUseCase implements UseCase<AuthResponse, EmailLoginParams> {
  final AuthRepository repository;

  EmailLoginUseCase(this.repository);

  @override
  Future<Either<Failure, AuthResponse>> call(EmailLoginParams params) {
    return repository.signInWithEmail(
        email: params.email, password: params.password);
  }
}

class EmailLoginParams {
  final String email;
  final String password;

  EmailLoginParams({required this.email, required this.password});
}
