import 'package:dbestech_ecomly/core/usecase/usecase.dart';
import 'package:dbestech_ecomly/core/utils/typedefs.dart';
import 'package:dbestech_ecomly/src/auth/domain/repositories/auth_repository.dart';

class VerifyToken extends UsecaseWithoutParams<bool> {
  const VerifyToken(this._repo);

  final AuthRepository _repo;

  @override
  ResultFuture<bool> call() => _repo.verifyToken();
}
