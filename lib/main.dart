import 'package:eco_trip/app/modules/detail_barang/views/detail_barang_view.dart';
import 'package:eco_trip/app/modules/home/controllers/home_controller.dart';
import 'package:eco_trip/app/modules/profile/controllers/profile_controller.dart';
import 'package:eco_trip/app/modules/volunteer/controllers/volunteer_controller.dart';
import 'package:eco_trip/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'app/modules/setor_sampah/controllers/setor_sampah_controller.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var onboardingBox = await Hive.openBox('onboarding');
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await Hive.openBox(user.uid);
  }
  Get.put(SetorSampahController());
  Get.put(VolunteerController());
  Get.put(HomeController());

  runApp(MyApp(
    hasSeenOnboarding: onboardingBox.get('seen', defaultValue: false),
  ));
}

class MyApp extends StatelessWidget {
  final bool hasSeenOnboarding;
  const MyApp({super.key, required this.hasSeenOnboarding});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      getPages: AppPages.routes,
      home: SplashScreen(hasSeenOnboarding: hasSeenOnboarding),
    );
  }
}
