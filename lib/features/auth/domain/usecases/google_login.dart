import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/auth/domain/model/auth_response.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class GoogleLoginUseCase implements UseCase<AuthResponse, NoParams> {
  final AuthRepository repository;

  GoogleLoginUseCase(this.repository);

  @override
  Future<Either<Failure, AuthResponse>> call(params) {
    return repository.signInWithGoogle();
  }
}
