import 'package:eco_trip/app/modules/edit_profile_field/views/edit_profile_field_view.dart';
import 'package:eco_trip/app/utils/app_style.dart';
import 'package:eco_trip/app/widgets/custom_button.dart';
import 'package:eco_trip/app/widgets/profile_info_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends StatelessWidget {
  final controller = Get.put(ProfileController());
  final profile = Get.find<ProfileController>();

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.whiteColor,
      appBar: AppBar(
        backgroundColor: Style.whiteColor,
        title: Text(
          "Pengaturan",
          style: Style.textStyle2,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 10),
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/fotoprofile.png'),
            ),
            SizedBox(height: 10),
            Text(
              'Edit Foto Profil',
              style: Style.headLineStyle9.copyWith(
                color: Color(0xFF589A73),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Sampah',
                  style:
                      Style.headLineStyle12.copyWith(color: Color(0xFF4C76A5)),
                ),
                Obx(
                  () => Text(
                    '${(profile.totalSampah.value / 1000).toStringAsFixed(1)} Kg',
                    style: Style.headLineStyle12
                        .copyWith(color: Color(0xFF4C76A5)),
                  ),
                ),
              ],
            ),
            Divider(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                "Informasi Pengguna",
                style: Style.textStyle2,
              ),
            ),
            Obx(
              () => ProfileInfoTile(
                label: 'Nama',
                value: controller.displayName.value,
                editable: true,
                onTap: () {
                  Get.to(() => EditProfileFieldView(
                        title: 'Edit Nama',
                        label: 'Nama',
                        field: controller.displayName,
                        onSave: (val) {
                          controller.displayName.value = val;
                          controller.saveToHive();
                        },
                      ));
                },
              ),
            ),
            Obx(
              () => ProfileInfoTile(
                label: 'Nama Pengguna',
                value: controller.userName.value,
                editable: true,
                onTap: () {
                  Get.to(() => EditProfileFieldView(
                        title: 'Edit Nama Pengguna',
                        label: 'Nama Pengguna',
                        field: controller.userName,
                        onSave: (val) {
                          controller.userName.value = val;
                          controller.saveToHive();
                        },
                      ));
                },
              ),
            ),
            Obx(
              () => ProfileInfoTile(
                label: 'Bio',
                value: controller.bio.value,
                editable: true,
                onTap: () {
                  Get.to(() => EditProfileFieldView(
                        title: 'Edit bio',
                        label: 'Bio',
                        field: controller.bio,
                        onSave: (val) {
                          controller.bio.value = val;
                          controller.saveToHive();
                        },
                      ));
                },
              ),
            ),
            Divider(height: 30),
            ProfileInfoTile(
              label: 'ID Pengguna',
              value: controller.uid.value,
              copyable: true,
            ),
            Obx(
              () => ProfileInfoTile(
                label: 'Telepon',
                value: controller.phoneNumber.value,
                editable: true,
                onTap: () {
                  Get.to(() => EditProfileFieldView(
                        title: 'Edit Nomor Telepon',
                        label: 'No.Telp',
                        field: controller.phoneNumber,
                        onSave: (val) {
                          controller.phoneNumber.value = val;
                          controller.saveToHive();
                        },
                      ));
                },
              ),
            ),
            Obx(
              () => ProfileInfoTile(
                label: 'Tanggal Lahir',
                value: controller.birthDate.value,
                editable: true,
                onTap: () {
                  Get.to(() => EditProfileFieldView(
                        title: 'Edit Tanggal Lahir',
                        label: 'Tanggal lahir',
                        field: controller.birthDate,
                        onSave: (val) {
                          controller.birthDate.value = val;
                          controller.saveToHive();
                        },
                      ));
                },
              ),
            ),
            Obx(
              () => ProfileInfoTile(
                label: 'Kelamin',
                value: controller.gender.value,
                editable: true,
                onTap: () {
                  Get.to(() => EditProfileFieldView(
                        title: 'Edit Gender',
                        label: 'Gender',
                        field: controller.gender,
                        onSave: (val) {
                          controller.gender.value = val;
                          controller.saveToHive();
                        },
                      ));
                },
              ),
            ),
            SizedBox(height: 10),
            ProfileInfoTile(
              label: 'E-mail',
              value: controller.email.value,
            ),
            SizedBox(height: 40),
            CustomButton(
                text: "Log Out",
                onPress: () {
                  controller.logout();
                },
                col: Style.redColor,
                borderColor: Style.redColor,
                textStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
