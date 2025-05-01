import 'package:eco_trip/app/models/volunteer_model.dart';
import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomVolunteerTiles extends StatelessWidget {
  final VolunteerModel volunteerModel;

  const CustomVolunteerTiles({super.key, required this.volunteerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 180,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            volunteerModel.title,
            style: Style.textStyle2,
          ),
          SizedBox(height: 14),
          Row(
            children: [
              Image.asset(
                'assets/icons/date.png',
                height: 14,
                width: 14,
              ),
              SizedBox(width: 6),
              Text(
                volunteerModel.periode,
                style: Style.headLineStyle5,
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Image.asset(
                'assets/icons/location.png',
                height: 14,
                width: 14,
              ),
              SizedBox(width: 6),
              Text(
                volunteerModel.location,
                style: Style.headLineStyle5,
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFDAEFE3),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  "Dikelola oleh EcoTrip",
                  style: TextStyle(
                    color: Color(0xFF589A73),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              GestureDetector(
                child: Text(
                  "Lihat selengkapnya",
                  style: TextStyle(
                    color: Color(0xFF589A73),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () {
                  Get.toNamed(
                    Routes.VOLUNTEER_DETAIL,
                    arguments: volunteerModel,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
