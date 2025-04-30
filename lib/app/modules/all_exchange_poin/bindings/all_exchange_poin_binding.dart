import 'package:get/get.dart';

import '../controllers/all_exchange_poin_controller.dart';

class AllExchangePoinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllExchangePoinController>(
      () => AllExchangePoinController(),
    );
  }
}
