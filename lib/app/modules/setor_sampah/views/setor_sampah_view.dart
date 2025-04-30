import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setor_sampah_controller.dart';

class SetorSampahView extends GetView<SetorSampahController> {
  const SetorSampahView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SetorSampahView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SetorSampahView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
