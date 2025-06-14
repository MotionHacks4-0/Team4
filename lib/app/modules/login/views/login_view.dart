import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/custom_button.dart';
import 'package:eco_trip/app/widgets/custom_textform.dart';
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
            CustomTextform(
              title: "Email",
              textHint: "Your Email",
              onChanged: (val) => controller.email.value = val,
            ),
            SizedBox(height: 22),
            Obx(
              () => CustomTextform(
                title: "kata Sandi",
                textHint: "Password",
                obscureText: controller.isPasswordHidden.value,
                onChanged: (val) => controller.password.value = val,
                icon: "eye.png",
                onIconTap: controller.togglePasswordVisibility,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Obx(() => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: controller.toggleRememberMe,
                      )),
                ),
                Text(
                  "Ingat saya",
                  style: Style.headLineStyle5,
                ),
                SizedBox(width: 110),
                GestureDetector(
                  onTap: () {},
                  child: Text("Lupa kata sandi?", style: Style.headLineStyle5),
                ),
              ],
            ),
            SizedBox(height: 30),
            CustomButton(
              text: "Masuk",
              onPress: () {
                controller.login();
              },
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
              onPress: () {
                controller.loginWithGoogle();
              },
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
                    Get.offNamed(Routes.register);
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
