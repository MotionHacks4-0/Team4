import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/all_exchange_poin_controller.dart';

class AllExchangePoinView extends GetView<AllExchangePoinController> {
  const AllExchangePoinView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AllExchangePoinView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AllExchangePoinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
