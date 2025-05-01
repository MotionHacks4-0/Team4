import 'package:get/get.dart';

import '../controllers/tukar_poin_controller.dart';

class TukarPoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TukarPoinController>(
      () => TukarPoinController(),
    );
  }
}
