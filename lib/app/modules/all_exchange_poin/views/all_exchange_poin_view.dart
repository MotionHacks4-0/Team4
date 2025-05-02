import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_style.dart';
import '../../../widgets/custom_search_bar.dart';
import '../controllers/all_exchange_poin_controller.dart';

class AllExchangePoinView extends GetView<AllExchangePoinController> {
  const AllExchangePoinView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AllExchangePoinController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Daftar Produk',
          style: Style.headLineStyle12,
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
      ),
      body: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -20),
            child: Container(
              color: Colors.transparent,
              child: CustomSearchBar(
                controller: controller.searchController,
                onSearch: controller.filterProductList,
                hintText: "Cari barang / lokasi",
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              return GridView.builder(
                padding: const EdgeInsets.all(12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.5,
                  crossAxisSpacing: 0.5,
                  childAspectRatio: 0.7,
                ),
                itemCount: controller.filteredItems.length,
                itemBuilder: (context, index) =>
                    controller.filteredItems[index],
              );
            }),
          ),
        ],
      ),
    );
  }
}
