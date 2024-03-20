import 'package:flutter/material.dart';
import 'package:flutter_ui_task_20_march/model/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.green.shade100,
      ),
      child: Column(
        children: [
          Expanded(child: Image.network(item.imageUrl)),
          Text(item.label),
        ],
      ),
    );
  }
}
