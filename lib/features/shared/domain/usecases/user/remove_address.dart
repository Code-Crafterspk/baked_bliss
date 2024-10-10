import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class RemoveAddressUseCase implements UseCase<void, RemoveAddressParms> {
  final UserRepository _repository;
  RemoveAddressUseCase(UserRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, void>> call(RemoveAddressParms params) async {
    return await _repository.removeAddress(params.address,
        userId: params.userId);
  }
}

class RemoveAddressParms {
  final AddressModel address;
  final String userId;
  RemoveAddressParms({required this.address, required this.userId});
}
