import 'dart:convert';
import 'package:loans/src/core/error_entity.dart';
import 'package:loans/src/core/result_type.dart';
import 'package:loans/src/login/data/data_stores/user_preferences.dart';
import 'package:loans/src/login/data/responses/login_response.dart';
import 'package:loans/src/login/domain/entities/user_entity.dart';
import 'package:loans/src/login/domain/repositories/login_repository.dart';
import 'package:loans/src/services/app_http_manager.dart';
import 'package:loans/src/services/app_response.dart';

class LoginRepositoryImplementation implements LoginRepository {
  @override
  Future<Result<UserEntity>> login(String email, String password) async {
    AppHttpManager appHttpManager = AppHttpManager();
    AppResponse response = await appHttpManager.post(
      path: '/login',
      body: {'email': email, 'password': password},
    );
    if (response.isSuccess) {
      LoginResponse loginResponse =
          LoginResponse.fromJson(jsonDecode(response.body));
      UserPreferences preferences = UserPreferences();
      await preferences.prefs?.setString('token', loginResponse.token);
      return Result.success(loginResponse.user);
    }
    return Result.error(ErrorEntity(
        title: 'Error en el servidor',
        description: 'Error code ${response.statusCode}'));
  }
}
