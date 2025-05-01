import 'package:eco_trip/app/modules/detail_barang/widgets/modal_bottom2.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

class ModalBottom1 extends StatelessWidget {
  const ModalBottom1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Ingin menukar dengan barang ini?',
            style: Style.headLineStyle12,
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/detailprdk.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Style.greyColor1,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Tidak',
                    style: Style.headLineStyle9,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    enableDrag: false,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (BuildContext context) {
                      return const ModalBottom2();
                    },
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 7),
                  decoration: BoxDecoration(
                    color: Style.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Iya',
                    style: Style.headLineStyle10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
