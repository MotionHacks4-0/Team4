import 'package:get/get.dart';

import '../controllers/setor_sampah_controller.dart';

class SetorSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SetorSampahController>(
      () => SetorSampahController(),
    );
  }
}
