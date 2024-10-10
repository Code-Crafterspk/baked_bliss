import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class UpdateAddressUseCase implements UseCase<void, UpdateAddressParms> {
  final UserRepository _repository;
  UpdateAddressUseCase(UserRepository repository) : _repository = repository;

  @override
  Future<Either<Failure, void>> call(UpdateAddressParms params) async {
    return await _repository.updateAddress(params.address,
        userId: params.userId);
  }
}

class UpdateAddressParms {
  final String userId;
  final AddressModel address;
  UpdateAddressParms({required this.address, required this.userId});
}
