import 'package:eco_trip/app/modules/home/views/home_view.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

import '../../../widgets/custom_button.dart';
import '../controllers/setor_sampah_controller.dart';

class SetorGram extends StatefulWidget {
  const SetorGram({super.key});
  @override
  State<SetorGram> createState() => _SetorGramState();
}

class _SetorGramState extends State<SetorGram> {
  final SetorSampahController controller = Get.put(SetorSampahController());
  int weight = 0;

  void increaseWeight() {
    setState(() {
      weight += 50;
    });
  }

  void decreaseWeight() {
    if (weight > 0) {
      setState(() {
        weight -= 50;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Text(
            'Setorkan sampahmu',
            style: Style.headLineStyle12,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Masukkan total gramasi sampah yang sudah ditimbang oleh petugas. ',
            style: Style.headLineStyle14,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Style.greyColor1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/botol.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 10),
                Text(
                  'Berat sampah',
                  style: Style.headLineStyle5,
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: decreaseWeight,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                  decoration: BoxDecoration(
                    border: Border.all(color: Style.greyColor1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '$weight gram',
                        style: Style.headLineStyle5,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: increaseWeight,
                  constraints: BoxConstraints(),
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '*Gramasi kelipatan 50\n*50 gram = 50 poin',
              textAlign: TextAlign.right,
              style: Style.headLineStyle15,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Pilih kategori sampah',
            style: Style.headLineStyle9,
          ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => controller.setIndex('Organik'),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: controller.setAmmountIndex.value == 'Organik'
                            ? Style.yelloweColor
                            : Colors.transparent,
                        border: Border.all(
                            color: controller.setAmmountIndex.value == 'Organik'
                                ? Style.yelloweColor
                                : Style.greyColor1,
                            width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Organik',
                        style: controller.setAmmountIndex.value == 'Organik'
                            ? Style.headLineStyle6
                            : Style.headLineStyle7,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => controller.setIndex('Anorganik'),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: controller.setAmmountIndex.value == 'Anorganik'
                            ? Style.yelloweColor
                            : Colors.transparent,
                        border: Border.all(
                            color:
                                controller.setAmmountIndex.value == 'Anorganik'
                                    ? Style.yelloweColor
                                    : Style.greyColor1,
                            width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'Anorganik',
                        style: controller.setAmmountIndex.value == 'Anorganik'
                            ? Style.headLineStyle6
                            : Style.headLineStyle7,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () => controller.setIndex('B3'),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: controller.setAmmountIndex.value == 'B3'
                            ? Style.yelloweColor
                            : Colors.transparent,
                        border: Border.all(
                            color: controller.setAmmountIndex.value == 'B3'
                                ? Style.yelloweColor
                                : Style.greyColor1,
                            width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'B3',
                        style: controller.setAmmountIndex.value == 'B3'
                            ? Style.headLineStyle6
                            : Style.headLineStyle7,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerRight, // Posisi gambar di sebelah kanan
            child: Image.asset(
              'assets/images/setor2.png',
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: 55),
          CustomButton(
            text: "Setorkan",
            onPress: () {
              int poin = weight;
              controller.totalPoin.value += poin;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Penyetoran sukses",
                          style: Style.headLineStyle12,
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/setor3.png',
                          width: 250,
                          height: 180,
                          fit: BoxFit.contain,
                        ),
                        Text("$poin Poin", style: Style.headLineStyle12),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                            controller.update();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Style.primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text("Tutup", style: Style.headLineStyle10),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            textStyle: Style.headLineStyle10,
            col: Style.primaryColor,
            borderColor: Style.primaryColor,
          ),
        ],
      ),
    );
  }
}
