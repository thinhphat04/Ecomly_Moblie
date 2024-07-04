import 'package:dbestech_ecomly/core/common/entities/user.dart';
import 'package:dbestech_ecomly/core/utils/typedefs.dart';

abstract class UserRepo {
  const UserRepo();

  ResultFuture<User> getUser(String userId);

  ResultFuture<User> updateUser({
    required String userId,
    required DataMap updateData,
  });

  ResultFuture<String> getUserPaymentProfile(String userId);
}
