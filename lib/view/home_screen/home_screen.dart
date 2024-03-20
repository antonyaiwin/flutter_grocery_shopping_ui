import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/controller/home_screen/home_screen_controller.dart';
import 'package:flutter_ui_task_20_march/view/home_screen/widgets/category_card.dart';
import 'package:flutter_ui_task_20_march/view/home_screen/widgets/product_card.dart';
import 'package:flutter_ui_task_20_march/view/product_details_screen/product_details_screen.dart';

import 'widgets/horizontal_list_view.dart';
import 'widgets/main_banner.dart';
import 'widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(0.94),
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 30,
        leading: const Icon(Icons.sort),
        title: TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.white38),
            filled: true,
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: Colors.white,
            contentPadding: const EdgeInsets.all(10),
            fillColor: Colors.white.withOpacity(0.23),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainBanner(),
            const SectionHeader(
              title: 'Category',
            ),
            const SizedBox(height: 10),
            HorizontalListView(
              height: 100,
              itemBuilder: (context, index) => CategoryCard(
                item: HomeScreenController.categoryList[index],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: HomeScreenController.categoryList.length,
            ),
            const SizedBox(height: 10),
            const SectionHeader(
              title: 'Best Seller',
            ),
            HorizontalListView(
              height: 200,
              itemBuilder: (context, index) {
                return InkWell(
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(
                            item: HomeScreenController.productList[index]),
                      ),
                    );
                  },
                  child: ProductCard(
                      item: HomeScreenController.productList[index]),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemCount: HomeScreenController.productList.length,
            ),
            const SizedBox(height: 10),
            const SectionHeader(
              title: 'Featured Deals',
            ),
            HorizontalListView(
              height: 200,
              itemBuilder: (context, index) {
                return InkWell(
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsScreen(
                            item: HomeScreenController.productList[index]),
                      ),
                    );
                  },
                  child: ProductCard(
                      item: HomeScreenController.productList[index]),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemCount: HomeScreenController.productList.length,
            ),
          ],
        ),
      ),
    );
  }
}
