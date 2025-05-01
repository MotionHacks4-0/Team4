import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../utils/app_style.dart';
import '../controllers/all_exchange_poin_controller.dart';
import '../widgets/tukar_poin.dart'; // pastikan ini import widgetnya

class AllExchangePoinView extends GetView<AllExchangePoinController> {
  const AllExchangePoinView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = [
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
      GestureDetector(
        onTap: () {
          print('product tapped');
          Get.toNamed(Routes.DETAIL_BARANG);
        },
        child: TukarPoin(
          imagePath: 'assets/images/product4.png',
          title: 'Ancol Bantal Plushie',
          poin: 550,
          lokasi: 'Ancol',
        ),
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
      GestureDetector(
        onTap: () {
          print('product tapped');
          Get.toNamed(
            Routes.DETAIL_BARANG,
          );
          
        },
        child: TukarPoin(
          imagePath: 'assets/images/product4.png',
          title: 'Ancol Bantal Plushie',
          poin: 550,
          lokasi: 'Ancol',
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Daftar Produk',
          style: Style.headLineStyle12,
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 0.5,
          crossAxisSpacing: 0.5,
          childAspectRatio: 0.7,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) => items[index],
      ),
    );
  }
}
