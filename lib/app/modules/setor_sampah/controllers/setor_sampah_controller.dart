import 'package:get/get.dart';

class SetorSampahController extends GetxController {
  RxString setAmmountIndex = ''.obs;
  var totalPoin = 0.obs;

  void setorSampah(int berat) {
    int poinBaru = berat * 10;
    totalPoin.value += poinBaru;
  }

  setIndex(index) {
    print(index);
    setAmmountIndex.value = index;
    update();
  }
}
