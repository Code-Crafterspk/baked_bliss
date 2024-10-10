import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetUserUseCase implements UseCase<UserModel, NoParams> {
  final UserRepository _repository;
  GetUserUseCase(UserRepository repository) : _repository = repository;
  @override
  Future<Either<Failure, UserModel>> call(NoParams params) async {
    return await _repository.getUser();
  }
}
