import 'package:loans/src/core/result_type.dart';
import 'package:loans/src/login/domain/repositories/login_repository.dart';

class LoginUseCase {
  LoginRepository repository;

  LoginUseCase(
    this.repository,
  );

  Future<Result> execute(String email, String password) {
    return repository.login(email, password);
  }
}
