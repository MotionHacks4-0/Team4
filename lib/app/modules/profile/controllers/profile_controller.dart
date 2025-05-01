import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProfileController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late Box box;

  var displayName = 'Tambah Nama'.obs;
  var userName = 'Tambah Nama pengguna'.obs;
  var bio = 'Tambah Bio'.obs;
  var uid = 'Tambah Id'.obs;
  var phoneNumber = 'Tambah No.Telp'.obs;
  var birthDate = 'Tambah tanggal lahir'.obs;
  var gender = 'Tambah gender'.obs;
  var email = 'Tambah email'.obs;
  var photoURL = ''.obs;

  void logout() {
    // Add logout logic here (e.g., clear user session, navigate to login)
    Get.offAllNamed('/login');
  }

  void setupUserBox() async {
    final user = _auth.currentUser;
    if (user != null) {
      uid.value = user.uid;
      box = await Hive.openBox(user.uid);
      loadUserData();
    }
  }

  void saveToHive() {
    box.put('displayName', displayName.value);
    box.put('userName', userName.value);
    box.put('bio', bio.value);
    box.put('phoneNumber', phoneNumber.value);
    box.put('birthDate', birthDate.value);
    box.put('gender', gender.value);
  }

  void loadFromHive() {
    displayName.value = box.get('displayName', defaultValue: displayName.value);
    userName.value = box.get('userName', defaultValue: userName.value);
    bio.value = box.get('bio', defaultValue: bio.value);
    phoneNumber.value = box.get('phoneNumber', defaultValue: phoneNumber.value);
    birthDate.value = box.get('birthDate', defaultValue: birthDate.value);
    gender.value = box.get('gender', defaultValue: gender.value);
  }

  void loadUserData() {
    final user = _auth.currentUser;
    if (user != null) {
      displayName.value = user.displayName ?? 'No Name';
      email.value = user.email ?? '';
      phoneNumber.value = user.phoneNumber ?? this.phoneNumber.value;
      uid.value = user.uid;
      photoURL.value = user.photoURL ?? '';
    }
    loadFromHive();
  }

  @override
  void onInit() {
    super.onInit();

    setupUserBox();
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
