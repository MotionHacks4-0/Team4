import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                "Selamat Datang!👋🏻",
                style: Style.headLineStyle8,
              ),
            ),
            SizedBox(height: 28),
            CustomButton(
              text: "Masuk",
              onPress: () {},
              textStyle: Style.headLineStyle6,
              col: Style.primaryColor,
              borderColor: Style.primaryColor,
            ),
            SizedBox(height: 16),
            Text(
              "Lainnya",
              style: Style.headLineStyle7,
            ),
            SizedBox(height: 16),
            CustomButton(
              text: "Masuk dengan Google",
              onPress: () {},
              icon: "google.png",
              col: Style.whiteColor,
              borderColor: Style.greyColor1,
              textStyle: Style.headLineStyle5,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Belum memiliki akun? ",
                  style: Style.headLineStyle7,
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
