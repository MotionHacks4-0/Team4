import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.indicator,
            children: [
              Container(
                height: Get.height * 0.65,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/onboard1.png'),
                        scale: 1.75)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Skip button
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Skip",
                    style: Style.headLineStyle5,
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: controller.indicator,
                count: 3,
                effect: SlideEffect(
                    activeDotColor: Style.primaryColor,
                    spacing: 8.0,
                    radius: 8.0,
                    dotWidth: 12,
                    dotHeight: 12,
                    dotColor: Style.primaryColor30),
              ),
              // Circle Arrow Button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Style.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: () {
                      // Handle next
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
