import 'package:eco_trip/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class SetorSampahController extends GetxController {
  RxString setAmmountIndex = ''.obs;
  var totalPoin = 0.obs;

  void setorSampah(int berat) {
    int poinBaru = berat * 10;
    // Call profile controller and update its totalPoin
    final profile = Get.find<ProfileController>();
    profile.totalPoin.value += poinBaru;
    profile.box.put('totalPoin', profile.totalPoin.value); // persist
  }

  setIndex(index) {
    print(index);
    setAmmountIndex.value = index;
    update();
  }
}
