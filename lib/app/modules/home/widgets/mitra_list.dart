import 'package:eco_trip/app/modules/detail_wisata.dart/views/detail_wisata_dart_view.dart';
import 'package:eco_trip/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'wisata_mitra_list.dart';

class MitraList extends StatelessWidget {
  final controller = Get.find<HomeController>();
  MitraList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 13),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            WisataMitraList(
              image: 'assets/images/mitra1.png',
              press: () {
                Get.to(
                  () => DetailWisataDartView(
                      pariwisata:
                          controller.pariwisatas[0]), // panggil page-nya
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            WisataMitraList(
              image: 'assets/images/mitra2.png',
              press: () {
                Get.to(
                  () => DetailWisataDartView(
                      pariwisata:
                          controller.pariwisatas[1]), // panggil page-nya
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            WisataMitraList(
              image: 'assets/images/mitra3.png',
              press: () {
                Get.to(
                  () => DetailWisataDartView(
                      pariwisata:
                          controller.pariwisatas[2]), // panggil page-nya
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            WisataMitraList(
              image: 'assets/images/mitra4.png',
              press: () {
                Get.to(
                  () => DetailWisataDartView(
                      pariwisata:
                          controller.pariwisatas[3]), // panggil page-nya
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
