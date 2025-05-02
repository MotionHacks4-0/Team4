import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/routes/app_pages.dart';
import '../controllers/setor_sampah_controller.dart';

class Success {
  static void show(BuildContext context, int poin) {
    final controller = Get.find<SetorSampahController>();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Penyetoran sukses",
                style: Style.headLineStyle12,
                textAlign: TextAlign.center,
              ),
              Image.asset(
                'assets/images/setor3.png',
                width: 250,
                height: 180,
                fit: BoxFit.contain,
              ),
              Text("$poin Poin", style: Style.headLineStyle12),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                  controller.update();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Style.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text("Tutup", style: Style.headLineStyle10),
              )
            ],
          ),
        );
      },
    );
  }
}
