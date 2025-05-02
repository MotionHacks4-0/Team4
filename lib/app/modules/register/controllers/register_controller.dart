import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/services/auth_service.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final AuthService _authService = AuthService();

  final name = ''.obs;
  final email = ''.obs;
  final password = ''.obs;
  var isPasswordHidden = true.obs;

  Future<void> loginWithGoogle() async {
    try {
      final user = await _authService.loginWithGoogle();
      if (user != null) {
        Get.offNamed(Routes.BOTTOMNAVIGATION);
      } else {
        Get.snackbar('Login Canceled', 'User canceled the Google sign-in.');
      }
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    }
  }

  Future<void> register() async {
    try {
      final user = await _authService.register(email.value, password.value);
      if (user != null) {
        Get.offNamed(Routes.LOGIN);
      }
    } catch (e) {
      Get.snackbar('Registration Failed', e.toString());
    }
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
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
