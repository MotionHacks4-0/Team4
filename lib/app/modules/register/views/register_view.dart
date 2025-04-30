import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/custom_button.dart';
import 'package:eco_trip/app/widgets/custom_textform.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
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
              padding: EdgeInsets.only(right: 0),
              child: Text(
                "Ayo gabung bersama kami,",
                style: Style.headLineStyle10,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text(
                "Masukkan data diri anda",
                style: Style.headLineStyle9,
              ),
            ),
            SizedBox(height: 28),
            CustomTextform(
              title: "Nama",
              textHint: "Masukkan nama anda",
            ),
            SizedBox(height: 22),
            CustomTextform(
              title: "Email",
              textHint: "Masukkan email anda",
              onChanged: (value) => controller.email.value = value,
            ),
            SizedBox(height: 22),
            Obx(
              () => CustomTextform(
                title: "Kata Sandi",
                textHint: "Buat kata sandi",
                icon: "eye.png",
                obscureText: controller.isPasswordHidden.value,
                onIconTap: controller.togglePasswordVisibility,
                onChanged: (value) => controller.password.value = value,
              ),
            ),
            SizedBox(height: 37),
            CustomButton(
              text: "Daftar",
              onPress: () => controller.register(),
              textStyle: Style.headLineStyle6,
              col: Style.primaryColor,
              borderColor: Style.primaryColor,
            ),
            SizedBox(height: 16),
            Text(
              "atau daftar dengan",
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
                  "Sudah memiliki akun? ",
                  style: Style.headLineStyle7,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offNamed(Routes.LOGIN);
                  },
                  child: Text(
                    "Masuk",
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
