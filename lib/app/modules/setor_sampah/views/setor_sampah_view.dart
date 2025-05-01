import 'package:eco_trip/app/modules/setor_sampah/widgets/setor_gram.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/app_style.dart';
import '../../../widgets/custom_button.dart';
import '../controllers/setor_sampah_controller.dart';

class SetorSampahView extends GetView<SetorSampahController> {
  const SetorSampahView({super.key});
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
          const SizedBox(height: 60),
          Center(
            child: Image.asset(
              'assets/images/setor1.png',
            ),
          ),
          const SizedBox(height: 40),
          Text(
            ' Pastikan anda memeriksa lokasi penyetoran terdekat sebelum membawa sampah anda.',
            style: Style.headLineStyle9,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 70),
          CustomButton(
            text: "Saya mengerti",
            onPress: () {
              Get.to(() => const SetorGram());
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
