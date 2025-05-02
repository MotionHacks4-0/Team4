import 'package:flutter/material.dart';
import 'package:eco_trip/app/utils/app_style.dart';

class Load {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Setoran Anda Diproses",
                style: Style.headLineStyle12,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/setor4.png',
                width: 200,
                height: 140,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              Text(
                'Pastikan anda tetap berada di\nhalaman ini hingga proses selesai.',
                style: Style.headLineStyle17,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
