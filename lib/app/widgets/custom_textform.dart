import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomTextform extends StatelessWidget {
  final String title;
  final String textHint;
  final String? icon;
  final bool? obscureText;
  final void Function(String)? onChanged;
  final VoidCallback? onIconTap;

  const CustomTextform(
      {super.key,
      required this.title,
      required this.textHint,
      this.icon,
      this.obscureText,
      this.onChanged,
      this.onIconTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Style.headLineStyle5),
        const SizedBox(height: 5),
        SizedBox(
          width: 349,
          child: TextFormField(
            onChanged: onChanged,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              hintText: textHint,
              hintStyle: Style.headLineStyle5,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              suffixIcon: icon != null
                  ? Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: IconButton(
                        icon: Image.asset(
                          'assets/icons/$icon',
                          width: 20,
                          height: 20,
                        ),
                        onPressed: onIconTap,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
