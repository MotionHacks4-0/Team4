import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eco_trip/app/utils/app_style.dart';

class ProfileInfoTile extends StatelessWidget {
  final String label;
  final String value;
  final bool editable;
  final bool copyable;
  final VoidCallback? onTap;

  const ProfileInfoTile({
    super.key,
    required this.label,
    required this.value,
    this.editable = false,
    this.copyable = false,
    this.onTap,
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
            style: value == 'Tambah Nama' ||
                    value == 'Tambah Nama pengguna' ||
                    value == 'Tambah Bio' ||
                    value == 'Tambah Id' ||
                    value == 'Tambah No.Telp' ||
                    value == 'Tambah tanggal lahir' ||
                    value == 'Tambah gender' ||
                    value == 'Tambah email'
                ? Style.headLineStyle5.copyWith(color: Colors.grey)
                : Style.headLineStyle5,
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
              } else if (editable && onTap != null) {
                onTap!();
              }
            },
          ),
      ],
    );
  }
}
