import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

class TukarPoin extends StatelessWidget {
  final String imagePath;
  final String title;
  final int poin;
  final String lokasi;
  final VoidCallback? onTap;

  const TukarPoin({
    super.key,
    required this.imagePath,
    required this.title,
    required this.poin,
    required this.lokasi,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              border: Border.all(color: Style.greyColor1, width: 2),
            ),
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          imagePath,
                          height: 150,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          title,
                          style: Style.headLineStyle17,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '$poin poin',
                          style: Style.headLineStyle16,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              size: 16, color: Style.greyColor2),
                          const SizedBox(width: 4),
                          Text(lokasi, style: Style.headLineStyle15),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
