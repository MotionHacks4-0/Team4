import 'package:get/get.dart';

import '../controllers/inputgram_controller.dart';

class InputgramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputgramController>(
      () => InputgramController(),
    );
  }
}
