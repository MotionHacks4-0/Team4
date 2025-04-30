import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../routes/app_pages.dart';
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

              if (controller.page.value == 2) {
                Future.delayed(const Duration(seconds: 2), () {
                  Get.offAllNamed(Routes.HOME);
                });
              }
            },
            children: [
              //start page
              OnBoardingWidgets(),
              OnBoardingWidgets(),
              OnBoardingWidgets(),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip button
                  GestureDetector(
                    onTap: () {
                      controller.indicator.jumpToPage(3);
                    },
                    child: Text(
                      "Skip",
                      style: Style.headLineStyle5,
                    ),
                  ),

                  // SmoothPageIndicator
                  Obx(
                    () => Container(
                      child: controller.page.value != 3
                          ? SmoothPageIndicator(
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
                            )
                          : Container(),
                    ),
                  ),

                  // Arrow button
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingWidgets extends StatelessWidget {
  const OnBoardingWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 70),
          height: Get.height * 0.65,
          child: Image.asset(
            'assets/images/onboard1.png',
            scale: 1.75,
            fit: BoxFit
                .contain, // bisa juga coba BoxFit.cover tergantung kebutuhan
          ),
        ),
        Container(
          height: Get.height * 0.35,
          width: Get.width,
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Jelajah Seru, Bumi Lebih Asri',
                  style: Style.headLineStyle2),
              SizedBox(
                height: 20,
              ),
              Text(
                'Liburan tetap seru, tapi punya dampak positif\nbagi lingkungan',
                style: Style.headLineStyle5,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ],
    );
  }
}
