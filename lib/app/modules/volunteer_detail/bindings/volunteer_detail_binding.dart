import 'package:get/get.dart';

import '../controllers/volunteer_detail_controller.dart';

class VolunteerDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VolunteerDetailController>(
      () => VolunteerDetailController(),
    );
  }
}
