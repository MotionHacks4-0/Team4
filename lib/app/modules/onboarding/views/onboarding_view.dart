import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/onboarding.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/custom_button.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller.indicator,
            onPageChanged: (value) {
              controller.page.value = value;
              print(controller.page.value);
            },
            children: [
              //start page
              OnBoardingView(
                image: 'onboard1.png',
                title: 'Jelajah Seru, Bumi Lebih Asri',
                subtitle:
                    'Liburan tetap seru, tapi punya dampak positif\nbagi lingkungan',
              ),
              OnBoardingView(
                image: 'onboard2.png',
                title: 'Bantu Temukan Lokasi Sampah',
                subtitle:
                    'Buang sampah dengan mudah saat liburan, tanpa\nbingung cari tempatnya',
              ),
              OnBoardingView(
                image: 'onboard3.png',
                title: 'Tukar Sampah, Dapatkan Poin\nMenarik!',
                subtitle:
                    'Kumpulkan dan setor sampahmu, lalu tukar\npoinnya dengan hadiah',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 32.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Obx(
                () => controller.page.value != 2
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.indicator.jumpToPage(2);
                            },
                            child: Text(
                              "Skip",
                              style: Style.headLineStyle5,
                            ),
                          ),
                          SmoothPageIndicator(
                            controller: controller.indicator,
                            count: 3,
                            effect: SlideEffect(
                              activeDotColor: Style.primaryColor,
                              spacing: 14.0,
                              radius: 8.0,
                              dotWidth: 16,
                              dotHeight: 16,
                              dotColor: Style.primaryColor30,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Style.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.white),
                              onPressed: () {
                                controller.indicator.nextPage(
                                  duration: Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    : GestureDetector(
                        onTap: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                        child: CustomButton(
                          text: "Mulai",
                          onPress: () {
                            Get.offAllNamed(Routes.LOGIN);
                          },
                          textStyle: Style.headLineStyle6,
                          col: Style.primaryColor,
                          borderColor: Style.primaryColor,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
