import 'package:loans/src/core/result_type.dart';
import 'package:loans/src/login/domain/entities/user_entity.dart';

abstract class LoginRepository {
  Future<Result<UserEntity>> login(String email, String password);
}
