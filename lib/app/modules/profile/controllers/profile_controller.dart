import 'package:get/get.dart';

class ProfileController extends GetxController {
  var name = 'Karina'.obs;
  var username = 'Karina123'.obs;

  void logout() {
    // Add logout logic here (e.g., clear user session, navigate to login)
    Get.offAllNamed('/login');
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
