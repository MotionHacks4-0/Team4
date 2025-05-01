import 'package:get/get.dart';

import '../controllers/detail_wisata_dart_controller.dart';

class DetailWisataDartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailWisataDartController>(
      () => DetailWisataDartController(),
    );
  }
}
