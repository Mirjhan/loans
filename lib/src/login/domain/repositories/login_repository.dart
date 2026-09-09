import 'package:loans/src/core/result_type.dart';

abstract class LoginRepository {
  Future<Result> login(String email, String password);
}
