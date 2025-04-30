import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.LOGIN);
    });

    return Scaffold(
      backgroundColor: Style.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width * 0.5,
              height: Get.width * 0.5,
              child: Image.asset("assets/images/logo.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Ini Splash Screen',
              style: Style.headLineStyle,
            ),
          ],
        ),
      ),
    );
  }
}
