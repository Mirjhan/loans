import 'package:loans/src/core/error_entity.dart';
import 'package:loans/src/core/result_type.dart';
import 'package:loans/src/login/domain/repositories/login_repository.dart';
import 'package:loans/src/services/app_http_manager.dart';
import 'package:loans/src/services/app_response.dart';

class LoginRepositoryImplementation implements LoginRepository {
  @override
  Future<Result> login(String email, String password) async {
    // TODO: implement login
    AppHttpManager appHttpManager = AppHttpManager();
    AppResponse response = await appHttpManager.post(
      path: '/login',
      body: {'email': email, 'password': password},
    );
    if (response.isSuccess) {
      return Result.success(response.body);
    }
    return Result.error(ErrorEntity(
        title: 'Error en el servidor',
        description: 'Error code ${response.statusCode}'));
  }
}
