import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_wisata_dart_controller.dart';

class DetailWisataDartView extends GetView<DetailWisataDartController> {
  const DetailWisataDartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailWisataDartView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailWisataDartView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
