import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/model/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.item});
  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Image.network(
                    item.imageUrl,
                    // fit: BoxFit.cover,
                    width: 150,
                  ),
                ),
                const Positioned(
                    right: 10,
                    top: 10,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.green,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(bottom: 0, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      color: item.rating ~/ (index + 1) != 0
                          ? Colors.amber
                          : Colors.grey,
                      size: 10,
                    ),
                  ),
                ),
                Text(
                  item.itemName,
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Text(
                      '\$${(item.rate * (100 - item.discount) / 100).toStringAsFixed(0)}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '\$${item.rate.toStringAsFixed(0)}',
                      style: const TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Expanded(
                      child: Text(
                        '${item.discount}% off',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
