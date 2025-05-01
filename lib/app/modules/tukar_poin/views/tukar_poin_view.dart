import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tukar_poin_controller.dart';

class TukarPoinView extends GetView<TukarPoinController> {
  const TukarPoinView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TukarPoinView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TukarPoinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
