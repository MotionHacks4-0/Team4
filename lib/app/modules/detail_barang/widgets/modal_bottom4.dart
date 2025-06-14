import 'package:flutter/material.dart';
import '../../../utils/app_style.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class ModalBottom4 extends StatelessWidget {
  const ModalBottom4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Oops, Poin Kamu Masih Kurang!',
            style: Style.headLineStyle12,
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/detailprdk4.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Untuk melakukan penukaran hadiah, kamu membutuhkan lebih banyak poin.',
            style: Style.headLineStyle17,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.offAllNamed(Routes.bottomNavigation);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 7),
              decoration: BoxDecoration(
                color: Style.primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Tutup',
                style: Style.headLineStyle10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
