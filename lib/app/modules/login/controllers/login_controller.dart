import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/services/auth_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final AuthService _authService = AuthService();
  var rememberMe = false.obs;
  var obscurePassword = true.obs;

  final email = ''.obs;
  final password = ''.obs;
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleRememberMe(bool? value) => rememberMe.value = value ?? false;

  Future<void> login() async {
    try {
      final user = await _authService.login(email.value, password.value);
      if (user != null) {
        Get.offNamed(Routes.PROFILE);
      }
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    }
  }

  void goToForgotPassword() {
    // Add your navigation logic here
    Get.toNamed('/forgot-password');
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
