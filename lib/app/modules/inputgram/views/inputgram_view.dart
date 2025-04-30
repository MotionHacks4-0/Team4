import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inputgram_controller.dart';

class InputgramView extends GetView<InputgramController> {
  const InputgramView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputgramView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InputgramView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
