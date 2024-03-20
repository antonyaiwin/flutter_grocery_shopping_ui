import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/model/product_model.dart';

import '../../cart_screen/cart_screen.dart';

class ProductDetailsBottomNavBar extends StatelessWidget {
  const ProductDetailsBottomNavBar({
    super.key,
    required this.item,
  });
  final ProductModel item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 45,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.green.shade700,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(item: item),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
