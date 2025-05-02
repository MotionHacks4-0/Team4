import 'package:eco_trip/app/models/pariwisata_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<PariwisataModel> pariwisatas = [
    PariwisataModel(
      name: 'Batu Karas',
      location: 'Jawa Barat, Indonesia',
      rating: '4.8',
      description:
          'Pantai Batu Karas di Pangandaran menawarkan kombinasi pasir hitam lembut, ombak yang tenang, dan suasana alam yang asri. Tempat ini sangat cocok untuk pemula yang ingin belajar berselancar serta untuk pengunjung yang ingin bersantai di tepi laut.',
      extraInfo:
          'Kami siap membantu Anda selama berkunjung ke Pantai Batu Karas. Untuk informasi lebih lanjut, bantuan pemesanan, atau keluhan layanan, silakan hubungi:\n📞 Telepon/WhatsApp: +62 812-3456-789 📧 Email: support@batukaraswisata.id 🕐 Jam Operasional: Setiap hari, pukul 08.00 – 17.00 WIB 📍 Lokasi Kantor Layanan: Pintu masuk utama kawasan wisata Pantai Batu Karas',
      facilities: "assets/images/facilities.png",
      image: 'assets/images/default_pariwisata.png',
    ),
    PariwisataModel(
      name: 'Ancol',
      location: 'Jakarta, Indonesia',
      rating: '4.3',
      description:
          'Ancol di Jakarta adalah destinasi wisata keluarga yang menyuguhkan pantai buatan, taman hiburan, dan fasilitas rekreasi modern. Cocok untuk liburan singkat, acara keluarga, dan eksplorasi budaya di ibu kota.',
      extraInfo:
          'Kami siap membantu Anda selama berkunjung ke Pantai Batu Karas. Untuk informasi lebih lanjut, bantuan pemesanan, atau keluhan layanan, silakan hubungi:\n📞 Telepon/WhatsApp: +62 812-3456-789 📧 Email: support@batukaraswisata.id 🕐 Jam Operasional: Setiap hari, pukul 08.00 – 17.00 WIB 📍 Lokasi Kantor Layanan: Pintu masuk utama kawasan wisata Pantai Batu Karas',
      facilities: "assets/images/facilities.png",
      image: 'assets/images/wisata_2.png',
    ),
    PariwisataModel(
      name: 'Sawarna',
      location: 'Banten, Indonesia',
      rating: '4.8',
      description:
          'Pantai Sawarna di Banten menawarkan keindahan alam yang masih alami, tebing karang, dan ombak besar yang menarik bagi para peselancar. Destinasi ini sangat cocok untuk pecinta alam dan petualangan.',
      extraInfo:
          'Kami siap membantu Anda selama berkunjung ke Pantai Batu Karas. Untuk informasi lebih lanjut, bantuan pemesanan, atau keluhan layanan, silakan hubungi:\n📞 Telepon/WhatsApp: +62 812-3456-789 📧 Email: support@batukaraswisata.id 🕐 Jam Operasional: Setiap hari, pukul 08.00 – 17.00 WIB 📍 Lokasi Kantor Layanan: Pintu masuk utama kawasan wisata Pantai Batu Karas',
      facilities: "assets/images/facilities.png",
      image: 'assets/images/wisata_3.png',
    ),
    PariwisataModel(
      name: 'Kelingking',
      location: 'Bali, Indonesia',
      rating: '4.8',
      description:
          'Pantai Kelingking di Nusa Penida, Bali, terkenal dengan tebing berbentuk T-Rex yang ikonik dan panorama laut biru yang memukau. Cocok untuk penggemar fotografi dan pencinta pemandangan alam yang dramatis.',
      extraInfo:
          'Kami siap membantu Anda selama berkunjung ke Pantai Batu Karas. Untuk informasi lebih lanjut, bantuan pemesanan, atau keluhan layanan, silakan hubungi:\n📞 Telepon/WhatsApp: +62 812-3456-789 📧 Email: support@batukaraswisata.id 🕐 Jam Operasional: Setiap hari, pukul 08.00 – 17.00 WIB 📍 Lokasi Kantor Layanan: Pintu masuk utama kawasan wisata Pantai Batu Karas',
      facilities: "assets/images/facilities.png",
      image: 'assets/images/wisata_4.png',
    ),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
