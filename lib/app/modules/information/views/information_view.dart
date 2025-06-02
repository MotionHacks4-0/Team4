import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/information_controller.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Panduan Sampah',
          style: Style.headLineStyle12,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () => Get.back(),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 27),
            SizedBox(
              width: 350,
              height: 217,
              child: Stack(
                clipBehavior: Clip.none, // Allows image to overflow if needed
                children: [
                  // Base image
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(16), // optional rounded corners
                      child: Image.asset(
                        "assets/images/biru.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 20,
                    child: SizedBox(
                      width: 114,
                      height: 114,
                      child: Image.asset(
                        "assets/images/biru_util.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 217,
              child: Stack(
                clipBehavior: Clip.none, // Allows image to overflow if needed
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(16), // optional rounded corners
                      child: Image.asset(
                        "assets/images/kuning.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    right: 20,
                    child: SizedBox(
                      width: 114,
                      height: 114,
                      child: Image.asset(
                        "assets/images/kuning_util.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 217,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/ijo.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 45,
                    left: 20,
                    child: SizedBox(
                      width: 114,
                      height: 114,
                      child: Image.asset(
                        "assets/images/ijo_util.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
