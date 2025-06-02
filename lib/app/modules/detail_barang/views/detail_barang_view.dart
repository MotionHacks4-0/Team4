import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/app_style.dart';
import '../../../widgets/custom_button.dart';
import '../controllers/detail_barang_controller.dart';
import '../widgets/modal_bottom1.dart';

class DetailBarangView extends GetView<DetailBarangController> {
  final String image;
  final String name;
  final int poin;
  final String location;

  const DetailBarangView(this.image, this.name, this.poin, this.location,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Detail Produk',
            style: Style.headLineStyle12,
          ),
          backgroundColor: Colors.white,
          toolbarHeight: 80,
          elevation: 0,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(image),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: Style.headLineStyle18,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '$poin poin',
                      style: Style.headLineStyle19,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined,
                          size: 16, color: Style.greyColor2),
                      const SizedBox(width: 4),
                      Text(location, style: Style.headLineStyle7),
                      const Spacer(),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                          decoration: BoxDecoration(
                            color: Style.primaryColor10,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Tersedia : 250',
                            style: Style.headLineStyle13,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              text: "Tukar Poin",
              onPress: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  enableDrag: false,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (BuildContext context) {
                    return ModalBottom1(
                      image: image,
                      poin: poin,
                    );
                  },
                );
              },
              textStyle: Style.headLineStyle10,
              col: Style.primaryColor,
              borderColor: Style.primaryColor,
            )
          ],
        ));
  }
}
