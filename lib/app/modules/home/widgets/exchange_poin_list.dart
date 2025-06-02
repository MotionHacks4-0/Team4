import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExchangePoinList extends StatelessWidget {
  const ExchangePoinList({
    super.key,
    required this.image,
    required this.press,
  });
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        width: Get.width * 0.45,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
