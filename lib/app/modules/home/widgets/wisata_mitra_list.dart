import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WisataMitraList extends StatelessWidget {
  const WisataMitraList({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        width: Get.width * 0.6,
        height: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
