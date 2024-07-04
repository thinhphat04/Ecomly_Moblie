import 'package:dbestech_ecomly/core/usecase/usecase.dart';
import 'package:dbestech_ecomly/core/utils/typedefs.dart';
import 'package:dbestech_ecomly/src/auth/domain/repositories/auth_repository.dart';

class ForgotPassword extends UsecaseWithParams<void, String> {
  const ForgotPassword(this._repo);

  final AuthRepository _repo;

  @override
  ResultFuture<void> call(String params) => _repo.forgotPassword(params);
}
