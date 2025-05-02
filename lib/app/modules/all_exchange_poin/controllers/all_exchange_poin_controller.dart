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
      const TukarPoin(
        imagePath: 'assets/images/product1.png',
        title: 'Ancol Bantal Cushion',
        poin: 500,
        lokasi: 'Ancol',
      ),
      const TukarPoin(
        imagePath: 'assets/images/product2.png',
        title: 'Voucher Bobocabin...',
        poin: 1500,
        lokasi: 'Batu Karas',
      ),
      const TukarPoin(
        imagePath: 'assets/images/product3.png',
        title: 'Tas Eco-Friendly',
        poin: 100,
        lokasi: 'Pengandaran',
      ),
      TukarPoin(
        imagePath: 'assets/images/product4.png',
        title: 'Ancol Bantal Plushie',
        poin: 550,
        lokasi: 'Ancol',
        onTap: () {
          Get.toNamed(Routes.DETAIL_BARANG);
        },
      ),
      const TukarPoin(
        imagePath: 'assets/images/product5.png',
        title: 'Air Mineral',
        poin: 10,
        lokasi: 'Pengandaran',
      ),
      const TukarPoin(
        imagePath: 'assets/images/product6.png',
        title: 'Ancol Key Chain',
        poin: 150,
        lokasi: 'Ancol',
      ),
      const TukarPoin(
        imagePath: 'assets/images/product3.png',
        title: 'Tas Eco-Friendly',
        poin: 100,
        lokasi: 'Pengandaran',
      ),
      TukarPoin(
        imagePath: 'assets/images/product4.png',
        title: 'Ancol Bantal Plushie',
        poin: 550,
        lokasi: 'Ancol',
        onTap: () {
          Get.toNamed(Routes.DETAIL_BARANG);
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

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
