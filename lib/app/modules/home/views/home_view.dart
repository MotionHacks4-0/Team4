import 'package:eco_trip/app/modules/all_exchange_poin/views/all_exchange_poin_view.dart';
import 'package:eco_trip/app/modules/home/widgets/wisata_mitra_list.dart';
import 'package:eco_trip/app/modules/information/views/information_view.dart';
import 'package:eco_trip/app/modules/tukar_poin/views/tukar_poin_view.dart';
import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../setor_sampah/controllers/setor_sampah_controller.dart';
import '../../setor_sampah/views/setor_sampah_view.dart';
import '../controllers/home_controller.dart';
import '../widgets/mitra_list.dart';
import '../widgets/poin_list.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final SetorSampahController setorController =
        Get.find<SetorSampahController>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              Image.asset(
                'assets/images/leaf.png', // ganti dengan path asset kamu
                height: 30,
                width: 30,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Veiron',
                    style: Style.headLineStyle9,
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage('assets/images/fotoprofile.png'),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                child: Container(
                  width: Get.width,
                  height: 170,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background_banner.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Poinmu',
                          style: Style.headLineStyle10,
                        ),
                        Obx(() => Text(
                              '${setorController.totalPoin.value} Poin',
                              style: Style.headLineStyle11,
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const SetorSampahView());
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/icons/bin.png',
                                        width:
                                            30, // Ukuran ikon sesuaikan kebutuhan
                                        height: 30,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    'Setor',
                                    style: Style.headLineStyle6,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const TukarPoinView());
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/icons/gift.png',
                                        width:
                                            30, // Ukuran ikon sesuaikan kebutuhan
                                        height: 30,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    'Tukar',
                                    style: Style.headLineStyle6,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => const InformationView());
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: 45,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        'assets/icons/information.png',
                                        width: 23,
                                        height: 23,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    'Informasi',
                                    style: Style.headLineStyle6,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Text(
                  'Wisata Mitra',
                  style: Style.headLineStyle12,
                ),
              ),
              MitraList(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 8, right: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tukarkan Poinmu',
                      style: Style.headLineStyle12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => AllExchangePoinView(),
                          transition: Transition.cupertino,
                          duration: const Duration(milliseconds: 900),
                        );
                      },
                      child: Text(
                        'Lihat Semua',
                        style: Style.headLineStyle13,
                      ),
                    )
                  ],
                ),
              ),
              PoinList(),
            ],
          ),
        ],
      ),
    );
  }
}
