import 'package:eco_trip/app/widgets/custom_search_bar.dart';
import 'package:eco_trip/app/widgets/custom_volunteer_tiles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../controllers/volunteer_controller.dart';

class VolunteerView extends GetView<VolunteerController> {
  const VolunteerView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomSearchBar(
              controller: controller.searchController,
              onSearch: controller.filterVolunteers,
              hintText: "Cari aksi volunteer di sekitar",
            ),
            SizedBox(height: 30),
            Expanded(
              child: Obx(
                () {
                  return ListView.builder(
                    itemCount: controller.filteredList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Center(
                            child: CustomVolunteerTiles(
                              volunteerModel: controller.filteredList[index],
                            ),
                          ),
                          SizedBox(height: 16), // Space after each tile
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
