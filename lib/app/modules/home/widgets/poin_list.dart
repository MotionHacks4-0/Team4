import 'package:eco_trip/app/modules/detail_barang/views/detail_barang_view.dart';
import 'package:eco_trip/app/modules/home/widgets/exchange_poin_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class PoinList extends StatelessWidget {
  const PoinList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 13),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ExchangePoinList(
              image: 'assets/images/homepoin1.png',
              press: () {
                Get.toNamed(Routes.DETAIL_BARANG, arguments: {
                  'image': 'assets/images/product4.png',
                  'name': 'Ancol Bantal Plushie',
                  'poin': 550,
                  'location': 'Ancol',
                });
              },
            ),
            ExchangePoinList(
              image: 'assets/images/homepoin2.png',
              press: () {
                Get.toNamed(Routes.DETAIL_BARANG, arguments: {
                  'image': 'assets/images/product1.png',
                  'name': 'Ancol Bantal Cushion',
                  'poin': 500,
                  'location': 'Ancol',
                });
              },
            ),
            ExchangePoinList(
              image: 'assets/images/homepoin3.png',
              press: () {
                Get.toNamed(Routes.DETAIL_BARANG, arguments: {
                  'image': 'assets/images/product2.png',
                  'name': 'Voucher Bobocabin...',
                  'poin': 1500,
                  'location': 'Batu Karas',
                });
              },
            ),
            ExchangePoinList(
              image: 'assets/images/homepoin4.png',
              press: () {
                Get.toNamed(Routes.DETAIL_BARANG, arguments: {
                  'image': 'assets/images/product3.png',
                  'name': 'Tas Eco-Friendly',
                  'poin': 100,
                  'location': 'Pengandaran',
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
