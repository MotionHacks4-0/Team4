import 'package:get/get.dart';

import '../controllers/edit_profile_field_controller.dart';

class EditProfileFieldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileFieldController>(
      () => EditProfileFieldController(),
    );
  }
}
