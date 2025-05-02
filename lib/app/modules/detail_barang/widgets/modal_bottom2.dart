import 'package:eco_trip/app/modules/detail_barang/widgets/modal_bottom4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/app_style.dart';
import '../../profile/controllers/profile_controller.dart';
import 'modal_botttom3.dart';

class ModalBottom2 extends StatelessWidget {
  final int poin;
  const ModalBottom2({
    super.key,
    required this.poin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Tukar Poin Sekarang?',
            style: Style.headLineStyle12,
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/detailprdk2.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'Setelah kamu setuju, poinmu akan langsung dipotong dan timer selama ',
                  style: Style.headLineStyle17,
                ),
                TextSpan(
                  text: '5 menit ',
                  style: Style.headLineStyle20,
                ),
                TextSpan(
                  text:
                      'akan dimulai untuk proses penukaran hadiah di stand. \nSiap tukar sekarang?',
                  style: Style.headLineStyle17,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // tutup ModalBottom2
                  Navigator.pop(context); // tutup ModalBottom1
                  Future.delayed(Duration.zero, () {
                    onTap:
                    () {
                      Get.toNamed(
                        Routes.DETAIL_BARANG,
                      );
                    };
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Style.greyColor1,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Batal',
                    style: Style.headLineStyle9,
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  final profile = Get.find<ProfileController>();
                  int requiredPoin = poin;

                  if (profile.totalPoin.value >= requiredPoin) {
                    profile.kurangiPoin(requiredPoin);

                    Navigator.pop(context); // Tutup ModalBottom2
                    Navigator.pop(context); // Tutup ModalBottom1

                    Future.delayed(Duration.zero, () {
                      showModalBottomSheet(
                        context: Get.context!,
                        isDismissible: false,
                        enableDrag: false,
                        backgroundColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        builder: (BuildContext context) {
                          Future.delayed(const Duration(seconds: 1), () {
                            Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                          });

                          return const ModalBotttom3();
                        },
                      );
                    });
                  } else {
                    Navigator.pop(context); // Tutup ModalBottom2
                    Navigator.pop(context); // Tutup ModalBottom1

                    Future.delayed(
                      Duration.zero,
                      () {
                        showModalBottomSheet(
                            context: Get.context!,
                            isDismissible: false,
                            enableDrag: false,
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            builder: (BuildContext contex) {
                              Future.delayed(const Duration(seconds: 1), () {
                                Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                              });
                              return const ModalBottom4();
                            });
                      },
                    );
                  }
                  ;
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                  decoration: BoxDecoration(
                    color: Style.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Tukar Sekarang',
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
