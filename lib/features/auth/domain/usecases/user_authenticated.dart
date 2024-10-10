import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserAuthenticatedUseCase implements UseCase<bool, NoParams> {
  final AuthRepository repository;

  UserAuthenticatedUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.userAuthenticated();
  }
}
