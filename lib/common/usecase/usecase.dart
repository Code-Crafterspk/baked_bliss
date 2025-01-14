import 'package:baked_bliss/common/failure/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UseCase<Success, Params> {
  Future<Either<Failure, Success>> call(Params params);
}

class NoParams {}
