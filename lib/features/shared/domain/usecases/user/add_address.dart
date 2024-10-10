import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class AddAddressUseCase implements UseCase<void, AddAddressParms> {
  final UserRepository _repository;
  AddAddressUseCase(UserRepository repository) : _repository = repository;
  @override
  Future<Either<Failure, void>> call(AddAddressParms params) async {
    return await _repository.addAddress(params.address, userId: params.userId);
  }
}

class AddAddressParms {
  final AddressModel address;
  final String userId;
  AddAddressParms({required this.address, required this.userId});
}
