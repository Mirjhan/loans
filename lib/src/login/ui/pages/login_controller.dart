import 'package:get/get.dart';
import 'package:loans/src/core/result_type.dart';
import 'package:loans/src/home_page/ui/pages/home_page.dart';
import 'package:loans/src/login/data/repositories/login_repository_implementation.dart';
import 'package:loans/src/login/domain/use_cases/login_use_case.dart';

class LoginController extends GetxController {
  LoginUseCase loginUseCase = LoginUseCase(LoginRepositoryImplementation());
  String email = "";
  String password = "";

  void onChangedEmail(String value) {
    email = value;
  }

  void onChangedPassword(String value) {
    password = value;
  }

  String? validar() {
    if (email.trim().isEmpty) return "Email no debe ser un campo vacío";
    if (password.trim().isEmpty) return "Password no debe ser un campo vacío";
    return null;
  }

  Future<void> ingresar() async {
    String? mensaje = validar();
    if (mensaje != null) {
      showSnackbar(mensaje);
      return;
    }
    final result = await loginUseCase.execute(email, password);
    switch (result) {
      case Success():
        Get.off(() => HomePage());
        break;
      case Error():
        showSnackbar('Ocurrio un error con el servidor');
        break;
    }
  }

  void showSnackbar(String message) {
    Get.snackbar('Error', message);
  }
}
