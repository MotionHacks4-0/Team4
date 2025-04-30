import 'package:get/get.dart';

import '../modules/bottomnavigation/bindings/bottomnavigation_binding.dart';
import '../modules/bottomnavigation/views/bottomnavigation_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/inputgram/bindings/inputgram_binding.dart';
import '../modules/inputgram/views/inputgram_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/volunteer/bindings/volunteer_binding.dart';
import '../modules/volunteer/views/volunteer_view.dart';
import '../widgets/splash.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATION,
      page: () => const BottomnavigationView(),
      binding: BottomnavigationBinding(),
    ),
    GetPage(
      name: _Paths.INPUTGRAM,
      page: () => const InputgramView(),
      binding: InputgramBinding(),
    ),
    GetPage(
      name: _Paths.VOLUNTEER,
      page: () => const VolunteerView(),
      binding: VolunteerBinding(),
    ),
  ];
}
