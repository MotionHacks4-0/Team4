import 'package:eco_trip/app/modules/profile/controllers/profile_controller.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileFieldView extends StatelessWidget {
  final String title;
  final String label;
  final RxString field;
  final void Function(String) onSave;

  EditProfileFieldView({super.key, 
    required this.title,
    required this.label,
    required this.field,
    required this.onSave,
  });

  final TextEditingController _controller = TextEditingController();

  final profileCtrl = Get.find<ProfileController>();
  @override
  Widget build(BuildContext context) {
    _controller.text = field.value;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title, style: Style.textStyle2),
        leading: BackButton(),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gunakan informasi $label yang sesuai',
              style: Style.headLineStyle7,
            ),
            SizedBox(height: 5),
            if (label == "Tanggal lahir")
              Text(
                "Contoh: 1 Januari 2005",
                style: Style.headLineStyle7.copyWith(fontSize: 12),
              ),
            SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: Style.headLineStyle7.copyWith(fontSize: 16),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Image.asset(
                    'assets/icons/delete.png',
                    width: 16,
                    height: 16,
                  ),
                  onPressed: () => _controller.clear(),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: CustomButton(
                text: "Simpan",
                onPress: () {
                  onSave(_controller.text.trim());
                  profileCtrl.saveToHive();
                  _controller.clear();
                  Get.back();
                },
                col: Color(0xFFEFF5F1),
                borderColor: Color(0xFFEFF5F1),
                textStyle: Style.textStyle.copyWith(
                  color: Color(0xFF589A73),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// onSave(_controller.text.trim());
//                 profileCtrl.saveToHive();
//                 _controller.clear();
//                 Get.back();
