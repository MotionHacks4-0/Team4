import 'package:eco_trip/app/modules/detail_barang/views/detail_barang_view.dart';
import 'package:eco_trip/app/modules/home/widgets/exchange_poin_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                Get.to(
                  () => DetailBarangView(),
                  transition: Transition.cupertino,
                  duration: Duration(milliseconds: 900),
                );
              },
            ),
            ExchangePoinList(
              image: 'assets/images/homepoin2.png',
              press: () {},
            ),
            ExchangePoinList(
              image: 'assets/images/homepoin3.png',
              press: () {},
            ),
            ExchangePoinList(
              image: 'assets/images/homepoin4.png',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
