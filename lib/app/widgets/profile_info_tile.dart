import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eco_trip/app/utils/app_style.dart';

class ProfileInfoTile extends StatelessWidget {
  final String label;
  final String value;
  final bool editable;
  final bool copyable;

  const ProfileInfoTile({
    super.key,
    required this.label,
    required this.value,
    this.editable = false,
    this.copyable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Label
        SizedBox(
          width: 140,
          child: Text(
            label,
            style: Style.headLineStyle7,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Value
        Expanded(
          child: Text(
            value,
            style: Style.headLineStyle5,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        // Action icon
        if (editable || copyable)
          IconButton(
            icon: Icon(
              copyable ? Icons.copy : Icons.chevron_right,
              size: 20,
            ),
            onPressed: () {
              if (copyable) {
                Clipboard.setData(ClipboardData(text: value));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Copied to clipboard")),
                );
              } else if (editable) {
                // Add your navigation or dialog for editing here
              }
            },
          ),
      ],
    );
  }
}
