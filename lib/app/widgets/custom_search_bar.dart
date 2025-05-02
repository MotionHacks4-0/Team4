import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSearch;
  final String hintText;

  const CustomSearchBar({
    super.key,
    required this.controller,
    required this.onSearch,
    this.hintText = "Cari...",
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Row(
        children: [
          Container(
            height: 45,
            width: 300,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: controller,
              onChanged: onSearch,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Style.headLineStyle7,
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Color(0xFF589A73),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {
                onSearch(controller.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
