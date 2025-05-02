import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottomnavigation_controller.dart';

class BottomnavigationView extends GetView<BottomnavigationController> {
  const BottomnavigationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => SafeArea(
          child: controller.screens[controller.CurrentIndex.value],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: controller.CurrentIndex.value,
          selectedItemColor: Style.primaryColor,
          unselectedItemColor: Style.primaryColor,
          selectedLabelStyle: Style.headLineStyle16,
          unselectedLabelStyle: Style.headLineStyle21,
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          type: BottomNavigationBarType.fixed,
          onTap: (index) => controller.SetIndex(index),
          items: [
            BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 0
                          ? 'assets/icons/home.png'
                          : 'assets/icons/unhome.png'),
                    ),
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 1
                          ? 'assets/icons/volunteer.png'
                          : 'assets/icons/unvolunteer.png'),
                    ),
                  ),
                ),
                label: 'Volunteering'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(controller.CurrentIndex.value == 2
                          ? 'assets/icons/setting.png'
                          : 'assets/icons/unsetting.png'),
                    ),
                  ),
                ),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
