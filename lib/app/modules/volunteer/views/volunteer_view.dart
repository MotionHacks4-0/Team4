import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/volunteer_controller.dart';

class VolunteerView extends GetView<VolunteerController> {
  const VolunteerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('VolunteerView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'VolunteerView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
