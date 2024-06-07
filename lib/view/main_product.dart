import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api/controller/product_controller.dart';
import 'package:rest_api/view/product_tile.dart';

class MainProduct extends StatelessWidget {
  ProductController productController = Get.put(ProductController());
  MainProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if(productController.isLoading.value)
        return Center(child: CircularProgressIndicator(),);
       return
      GridView.builder(
      itemCount: productController.productList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.35),
      itemBuilder: (context, index) {
        return ProductTile(product: productController.productList[index],);
      },
    );
     
    });
  }
}
