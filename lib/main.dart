import 'package:eco_trip/app/modules/detail_barang/views/detail_barang_view.dart';
import 'package:eco_trip/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/setor_sampah/controllers/setor_sampah_controller.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Get.put(SetorSampahController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      getPages: AppPages.routes,
      home: const DetailBarangView(),
    );
  }
}
