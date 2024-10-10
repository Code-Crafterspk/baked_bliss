import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class ForgetPasswordUseCase implements UseCase<bool, String> {
  final AuthRepository repository;

  ForgetPasswordUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(String params) async {
    return repository.forgetPassword(params);
  }
}
