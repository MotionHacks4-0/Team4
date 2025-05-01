import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

class ModalBotttom3 extends StatelessWidget {
  const ModalBotttom3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Penukaran diproses',
            style: Style.headLineStyle12,
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/detailprdk3.png', // Ganti sesuai path gambar kamu
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Konfirmasi ke penjaga\nuntuk ambil hadiahmu.',
                style: Style.headLineStyle17,
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 20),
              Text(
                '04:53',
                style: Style.headLineStyle12,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
