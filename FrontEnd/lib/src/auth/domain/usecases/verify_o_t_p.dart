import 'package:dbestech_ecomly/core/usecase/usecase.dart';
import 'package:dbestech_ecomly/core/utils/typedefs.dart';
import 'package:dbestech_ecomly/src/auth/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

class VerifyOTP extends UsecaseWithParams<void, VerifyOTPParams> {
  const VerifyOTP(this._repo);

  final AuthRepository _repo;

  @override
  ResultFuture<void> call(VerifyOTPParams params) => _repo.verifyOTP(
        email: params.email,
        otp: params.otp,
      );
}

class VerifyOTPParams extends Equatable {
  const VerifyOTPParams({
    required this.email,
    required this.otp,
  });

  final String email;
  final String otp;

  @override
  List<dynamic> get props => [email, otp];
}
