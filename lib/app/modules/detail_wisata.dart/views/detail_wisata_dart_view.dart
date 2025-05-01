import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eco_trip/app/models/pariwisata_model.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailWisataDartView extends GetView {
  final PariwisataModel? pariwisata;

  const DetailWisataDartView({super.key, this.pariwisata});

  @override
  Widget build(BuildContext context) {
    final data = pariwisata;

    return SafeArea(
      child: Scaffold(
        body: data == null
            ? const Center(child: Text("No data available"))
            : Stack(
                children: [
                  // === Background Layer (image + white area) ===
                  Column(
                    children: [
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: Image.asset(
                          data.image ?? 'assets/images/default_pariwisata.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  // === Info Tile Layer (scrollable + overlaps image) ===
                  Positioned(
                    top: 280,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
                      ),
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Name
                            Text(data.name,
                                style: Style.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 20)),
                            const SizedBox(height: 8),

                            // Location
                            Row(
                              children: [
                                const Icon(Icons.location_on,
                                    size: 18, color: Colors.red),
                                const SizedBox(width: 4),
                                Text(
                                  data.location,
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),

                            // Rating
                            Text("⭐ ${data.rating}",
                                style: GoogleFonts.poppins()),
                            const SizedBox(height: 20),

                            // Tentang
                            Text(
                              "Tentang",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              data.description,
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify,
                            ),
                            const SizedBox(height: 20),

                            // Fasilitas
                            Text(
                              "Fasilitas",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Image.asset(
                              height: 100,
                              data.facilities,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 5),

                            // Informasi Tambahan
                            Text(
                              "Informasi Tambahan",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              data.extraInfo,
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // === Back button & title ===
                  Positioned(
                    top: 20,
                    left: 16,
                    right: 16,
                    child: SizedBox(
                      height: 56,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 56),
                            child: Text(
                              data.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back,
                                  color: Colors.white),
                              onPressed: () => Get.back(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
