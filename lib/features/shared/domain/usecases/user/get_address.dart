import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetAddressesUseCase
    implements UseCase<List<AddressModel>, GetAddressParms> {
  final UserRepository _repository;
  GetAddressesUseCase(UserRepository repository) : _repository = repository;
  @override
  Future<Either<Failure, List<AddressModel>>> call(
      GetAddressParms params) async {
    return await _repository.getAddresses(userId: params.userId);
  }
}

class GetAddressParms {
  final String userId;
  GetAddressParms({required this.userId});
}
