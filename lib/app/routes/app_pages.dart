import 'package:eco_trip/app/modules/volunteer_detail/bindings/volunteer_detail_binding.dart';
import 'package:eco_trip/app/modules/volunteer_detail/views/volunteer_detail_view.dart';
import 'package:get/get.dart';

import '../modules/all_exchange_poin/bindings/all_exchange_poin_binding.dart';
import '../modules/all_exchange_poin/views/all_exchange_poin_view.dart';
import '../modules/bottomnavigation/bindings/bottomnavigation_binding.dart';
import '../modules/bottomnavigation/views/bottomnavigation_view.dart';
import '../modules/detail_barang/bindings/detail_barang_binding.dart';
import '../modules/detail_barang/views/detail_barang_view.dart';
import '../modules/detail_wisata.dart/bindings/detail_wisata_dart_binding.dart';
import '../modules/detail_wisata.dart/views/detail_wisata_dart_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/information/bindings/information_binding.dart';
import '../modules/information/views/information_view.dart';
import '../modules/inputgram/bindings/inputgram_binding.dart';
import '../modules/inputgram/views/inputgram_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/setor_sampah/bindings/setor_sampah_binding.dart';
import '../modules/setor_sampah/views/setor_sampah_view.dart';
import '../modules/tukar_poin/bindings/tukar_poin_binding.dart';
import '../modules/tukar_poin/views/tukar_poin_view.dart';
import '../modules/volunteer/bindings/volunteer_binding.dart';
import '../modules/volunteer/views/volunteer_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.onboarding,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.bottomNavigation,
      page: () => const BottomnavigationView(),
      binding: BottomnavigationBinding(),
    ),
    GetPage(
      name: _Paths.inputGram,
      page: () => const InputgramView(),
      binding: InputgramBinding(),
    ),
    GetPage(
      name: _Paths.volunteer,
      page: () => const VolunteerView(),
      binding: VolunteerBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.register,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.detailWisata,
      page: () => DetailWisataDartView(
        pariwisata: null,
      ),
      binding: DetailWisataDartBinding(),
    ),
    GetPage(
      name: _Paths.allExchangePoin,
      page: () => const AllExchangePoinView(),
      binding: AllExchangePoinBinding(),
    ),
    GetPage(
      name: _Paths.detailBarang,
      page: () {
        final args = Get.arguments as Map<String, dynamic>;
        return DetailBarangView(
          args['image'],
          args['name'],
          args['poin'],
          args['location'],
        );
      },
      binding: DetailBarangBinding(),
    ),
    GetPage(
      name: _Paths.setorSampah,
      page: () => const SetorSampahView(),
      binding: SetorSampahBinding(),
    ),
    GetPage(
      name: _Paths.tukarPoin,
      page: () => const TukarPoinView(),
      binding: TukarPoinBinding(),
    ),
    GetPage(
      name: _Paths.information,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.volunteerDetail,
      page: () => VolunteerDetailView(),
      binding: VolunteerDetailBinding(),
    ),
  ];
}
