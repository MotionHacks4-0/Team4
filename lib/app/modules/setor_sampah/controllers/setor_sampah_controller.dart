import 'package:eco_trip/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class SetorSampahController extends GetxController {
  RxString setAmmountIndex = ''.obs;
  var totalPoin = 0.obs;

  void setorSampah(int berat) {
    // Call profile controller and update its totalPoin
    final profile = Get.find<ProfileController>();
    profile.tambahPoinDanSampah(berat);
  }

  setIndex(index) {
    // ignore: avoid_print
    print(index);
    setAmmountIndex.value = index;
    update();
  }
}
