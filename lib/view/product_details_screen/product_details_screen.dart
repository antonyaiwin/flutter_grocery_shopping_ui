import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/model/product_model.dart';
import 'package:flutter_ui_task_20_march/view/product_details_screen/widgets/product_details_card.dart';

import 'widgets/product_details_bottom_nav_bar.dart';
import 'widgets/product_header_card.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key, required this.item});

  final ProductModel item;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ProductHeaderCard(pageController: pageController, item: item),
            const SizedBox(height: 20),
            ProductDetailsCard(
              item: item,
            ),
          ],
        ),
      ),
      bottomNavigationBar: ProductDetailsBottomNavBar(
        item: item,
      ),
    );
  }
}
