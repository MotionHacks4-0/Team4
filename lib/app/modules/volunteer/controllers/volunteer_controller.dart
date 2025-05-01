import 'package:eco_trip/app/models/volunteer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VolunteerController extends GetxController {
  var volunteerList = <VolunteerModel>[].obs;
  var filteredList = <VolunteerModel>[].obs;
  final searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // Add the volunteer items in onInit to initialize the list
    volunteerList.addAll([
      VolunteerModel(
        title: 'Aksi Bersih Pantai Bersama SOS (Save Our Sea)',
        periode: 'Sabtu, 10 Mei 2025, 08:00 - 12:00',
        location: 'Pantai Ancol, Jakarta',
        countDown: '10 Hari lagi',
        description:
            'Mari bergabung dalam aksi nyata untuk menyelamatkan laut kita! Aksi Bersih Pantai Bersama SOS (Save Our Sea) adalah kegiatan volunteering yang bertujuan untuk membersihkan area pesisir dari sampah plastik dan limbah anorganik, serta meningkatkan kesadaran masyarakat tentang pentingnya menjaga kebersihan laut.Melalui kegiatan ini, para relawan akan: \n1.Mengumpulkan dan memilah sampah di sepanjang garis pantai. \n2.Mencatat jenis dan jumlah sampah sebagai bagian dari data monitoring lingkungan. \n3.Mengikuti sesi edukasi singkat tentang dampak polusi laut dan cara hidup berkelanjutan. \n4.Berjejaring dengan komunitas pecinta lingkungan dan warga setempat ',
        picture: 'volunteer_1.jpg',
      ),
      VolunteerModel(
        title: 'Eco Brick Program Bersama Bali Life Foundation',
        periode: 'Rabu, 7 Mei 2025, 14:00 - 17:00',
        location: 'Pantai Ancol, Jakarta',
        countDown: '7 Hari lagi',
        description:
            'Mari bergabung dalam aksi nyata untuk menyelamatkan laut kita! Aksi Bersih Pantai Bersama SOS (Save Our Sea) adalah kegiatan volunteering yang bertujuan untuk membersihkan area pesisir dari sampah plastik dan limbah anorganik, serta meningkatkan kesadaran masyarakat tentang pentingnya menjaga kebersihan laut.Melalui kegiatan ini, para relawan akan: \n1.Mengumpulkan dan memilah sampah di sepanjang garis pantai. \n2.Mencatat jenis dan jumlah sampah sebagai bagian dari data monitoring lingkungan. \n3.Mengikuti sesi edukasi singkat tentang dampak polusi laut dan cara hidup berkelanjutan. \n4.Berjejaring dengan komunitas pecinta lingkungan dan warga setempat ',
        picture: 'volunteer_1.jpg',
      ),
      VolunteerModel(
        title: 'Aksi Restorasi Mangrove Bersama MAP (Mangrove Action Project)',
        periode: 'Selasa, 13 Mei 2025, 08:00 - 12:00',
        location: 'Pantai Benoa, Bali',
        countDown: '13 Hari lagi',
        description:
            'Mari bergabung dalam aksi nyata untuk menyelamatkan laut kita! Aksi Bersih Pantai Bersama SOS (Save Our Sea) adalah kegiatan volunteering yang bertujuan untuk membersihkan area pesisir dari sampah plastik dan limbah anorganik, serta meningkatkan kesadaran masyarakat tentang pentingnya menjaga kebersihan laut.Melalui kegiatan ini, para relawan akan: \n1.Mengumpulkan dan memilah sampah di sepanjang garis pantai. \n2.Mencatat jenis dan jumlah sampah sebagai bagian dari data monitoring lingkungan. \n3.Mengikuti sesi edukasi singkat tentang dampak polusi laut dan cara hidup berkelanjutan. \n4.Berjejaring dengan komunitas pecinta lingkungan dan warga setempat ',
        picture: 'volunteer_1.jpg',
      ),
    ]);
    filteredList.assignAll(volunteerList);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void filterVolunteers(String query) {
    if (query.isEmpty) {
      filteredList.assignAll(volunteerList);
    } else {
      final filtered = volunteerList.where((v) {
        return v.title.toLowerCase().contains(query.toLowerCase()) ||
            v.location.toLowerCase().contains(query.toLowerCase());
      }).toList();
      filteredList.assignAll(filtered);
    }
  }
}
