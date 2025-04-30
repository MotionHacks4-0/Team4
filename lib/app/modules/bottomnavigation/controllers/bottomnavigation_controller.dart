import 'package:eco_trip/app/modules/home/views/home_view.dart';
import 'package:eco_trip/app/modules/volunteer/views/volunteer_view.dart';
import 'package:get/get.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    HomeView(),
    VolunteerView(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
