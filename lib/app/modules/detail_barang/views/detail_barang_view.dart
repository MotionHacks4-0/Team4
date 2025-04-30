import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_barang_controller.dart';

class DetailBarangView extends GetView<DetailBarangController> {
  const DetailBarangView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailBarangView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailBarangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
