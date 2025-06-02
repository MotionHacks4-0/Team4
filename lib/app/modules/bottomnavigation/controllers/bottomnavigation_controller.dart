import 'package:eco_trip/app/modules/home/views/home_view.dart';
import 'package:eco_trip/app/modules/profile/views/profile_view.dart';
import 'package:eco_trip/app/modules/volunteer/views/volunteer_view.dart';
import 'package:get/get.dart';

class BottomnavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  final screens = [
    HomeView(),
    VolunteerView(),
    ProfileView(),
  ];

  setIndex(index) {
    currentIndex.value = index;
    update();
  }
}
