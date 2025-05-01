import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Observables for user data
  var displayName = ''.obs;
  var email = ''.obs;
  var phoneNumber = ''.obs;
  var uid = ''.obs;
  var photoURL = ''.obs;

  void logout() {
    // Add logout logic here (e.g., clear user session, navigate to login)
    Get.offAllNamed('/login');
  }

  void loadUserData() {
    final user = _auth.currentUser;
    if (user != null) {
      displayName.value = user.displayName ?? 'No Name';
      email.value = user.email ?? '';
      phoneNumber.value = user.phoneNumber ?? 'Tambahkan Nomor Telp.';
      uid.value = user.uid;
      photoURL.value = user.photoURL ?? '';
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadUserData();
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
