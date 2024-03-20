// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_ui_task_20_march/model/product_model.dart';

class CartItemModel {
  final ProductModel product;
  int count;
  CartItemModel({
    required this.product,
    required this.count,
  });
}
