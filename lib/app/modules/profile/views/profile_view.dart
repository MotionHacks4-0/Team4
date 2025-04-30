import 'package:eco_trip/app/routes/app_pages.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/custom_button.dart';
import 'package:eco_trip/app/widgets/profile_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.whiteColor,
      appBar: AppBar(
        backgroundColor: Style.whiteColor,
        title: Text(
          "Profil",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Edit Foto Profil',
              style: Style.headLineStyle11,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Sampah',
                  style: Style.headLineStyle12,
                ),
                Text(
                  '12.8 Kg',
                  style: Style.headLineStyle12,
                ),
              ],
            ),
            Divider(height: 30),

            // Editable Section
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                "Informasi Pengguna",
                style: Style.textStyle2,
              ),
            ),
            ProfileInfoTile(
              label: 'Nama',
              value: 'Veiron Vaya Yarief',
              editable: true,
            ),
            ProfileInfoTile(
              label: 'Nama Pengguna',
              value: 'Veiron123',
              editable: true,
            ),
            ProfileInfoTile(
              label: 'Bio',
              value: 'Masukkan biomu',
              editable: true,
            ),
            Divider(height: 30),
            ProfileInfoTile(
              label: 'ID Pengguna',
              value: '12345678',
              copyable: true,
            ),
            ProfileInfoTile(
              label: 'Telepon',
              value: '+62819372921',
              editable: true,
            ),
            ProfileInfoTile(
              label: 'Tanggal Lahir',
              value: '1 January 2000',
              editable: true,
            ),
            ProfileInfoTile(
              label: 'Kelamin',
              value: 'Perempuan',
              editable: true,
            ),
            SizedBox(height: 10),
            ProfileInfoTile(
              label: 'E-mail',
              value: 'karinas@gmail.com',
            ),
            SizedBox(height: 40),
            CustomButton(
                text: "Logout",
                onPress: () {
                  Get.toNamed(Routes.LOGIN);
                },
                col: Style.redColor,
                borderColor: Style.redColor,
                textStyle: Style.headLineStyle6)
          ],
        ),
      ),
    );
  }
}
