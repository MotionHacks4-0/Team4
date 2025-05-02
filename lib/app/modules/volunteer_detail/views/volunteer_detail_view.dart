import 'package:eco_trip/app/models/volunteer_model.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/volunteer_detail_controller.dart';

class VolunteerDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final VolunteerModel volunteer = Get.arguments as VolunteerModel;

    return Scaffold(
      backgroundColor: Style.whiteColor,
      appBar: AppBar(
        backgroundColor: Style.whiteColor,
        title: Text(
          'Detail Aktivitas',
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/volunteer_1.png',
                height: 200, // Increased size
                width: 350,
              ),
              const SizedBox(height: 16),
              Text(
                volunteer.title,
                style: Style.textStyle2,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(right: 294),
                child: Text(
                  volunteer.countDown,
                  style: TextStyle(
                    color: Color(0xFF589A73),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(right: 219),
                child: Text(
                  "Deskripsi kegiatan",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                volunteer.description,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
