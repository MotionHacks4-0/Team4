import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_style.dart';

class OnBoardingView extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subtitle;

  const OnBoardingView({this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 70),
          height: Get.height * 0.65,
          child: Image.asset(
            'assets/images/${image}',
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
              Text(
                '${title}',
                style: Style.headLineStyle2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${subtitle}',
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
