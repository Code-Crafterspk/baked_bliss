import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class UpdateUserUseCase implements UseCase<void, UserModel> {
  final UserRepository _repository;
  UpdateUserUseCase(UserRepository repository) : _repository = repository;
  @override
  Future<Either<Failure, void>> call(UserModel params) async {
    return await _repository.updateUser(params);
  }
}
