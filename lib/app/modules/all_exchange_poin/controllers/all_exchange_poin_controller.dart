import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../widgets/tukar_poin.dart';

class AllExchangePoinController extends GetxController {
  final searchController = TextEditingController();
  final allItems = <TukarPoin>[].obs;
  final filteredItems = <TukarPoin>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    allItems.assignAll([
      TukarPoin(
        imagePath: 'assets/images/product1.png',
        title: 'Ancol Bantal Cushion',
        poin: 500,
        lokasi: 'Ancol',
        onTap: () {
          Get.toNamed(Routes.detailBarang, arguments: {
            'image': 'assets/images/product1.png',
            'name': 'Ancol Bantal Cushion',
            'poin': 500,
            'location': 'Ancol',
          });
        },
      ),
      TukarPoin(
        imagePath: 'assets/images/product2.png',
        title: 'Voucher Bobocabin...',
        poin: 1500,
        lokasi: 'Batu Karas',
        onTap: () {
          Get.toNamed(Routes.detailBarang, arguments: {
            'image': 'assets/images/product2.png',
            'name': 'Voucher Bobocabin...',
            'poin': 1500,
            'location': 'Batu Karas',
          });
        },
      ),
      TukarPoin(
        imagePath: 'assets/images/product3.png',
        title: 'Tas Eco-Friendly',
        poin: 100,
        lokasi: 'Pengandaran',
        onTap: () {
          Get.toNamed(Routes.detailBarang, arguments: {
            'image': 'assets/images/product3.png',
            'name': 'Tas Eco-Friendly',
            'poin': 100,
            'location': 'Pengandaran',
          });
        },
      ),
      TukarPoin(
        imagePath: 'assets/images/product4.png',
        title: 'Ancol Bantal Plushie',
        poin: 550,
        lokasi: 'Ancol',
        onTap: () {
          Get.toNamed(Routes.detailBarang, arguments: {
            'image': 'assets/images/product4.png',
            'name': 'Ancol Bantal Plushie',
            'poin': 550,
            'location': 'Ancol',
          });
        },
      ),
      TukarPoin(
        imagePath: 'assets/images/product5.png',
        title: 'Air Mineral',
        poin: 10,
        lokasi: 'Pengandaran',
        onTap: () {
          Get.toNamed(Routes.detailBarang, arguments: {
            'image': 'assets/images/product5.png',
            'name': 'Air Mineral',
            'poin': 10,
            'location': 'Pengandaran',
          });
        },
      ),
      TukarPoin(
        imagePath: 'assets/images/product6.png',
        title: 'Ancol Key Chain',
        poin: 150,
        lokasi: 'Ancol',
        onTap: () {
          Get.toNamed(Routes.detailBarang, arguments: {
            'image': 'assets/images/product6.png',
            'name': 'Ancol Key Chain',
            'poin': 150,
            'location': 'Ancol',
          });
        },
      ),
    ]);

    filteredItems.assignAll(allItems);
  }

  void filterProductList(String query) {
    if (query.isEmpty) {
      filteredItems.assignAll(allItems);
    } else {
      final lowerQuery = query.toLowerCase();
      filteredItems.assignAll(
        allItems.where((item) =>
            item.title.toLowerCase().contains(lowerQuery) ||
            item.lokasi.toLowerCase().contains(lowerQuery)),
      );
    }
  }

  void increment() => count.value++;
}
