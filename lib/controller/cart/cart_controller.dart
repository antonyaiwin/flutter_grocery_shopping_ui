import 'package:flutter_ui_task_20_march/controller/home_screen/home_screen_controller.dart';
import 'package:flutter_ui_task_20_march/model/cart_item_model.dart';

class CartController {
  CartController._();
  double deliveryCharge = 5.0;

  static CartController instance = CartController._();

  List<CartItemModel> get cartItems => HomeScreenController.productList
      .map((e) => CartItemModel(product: e, count: 2))
      .toList();

  int get totalNumberOfItems {
    var cartItems = instance.cartItems;
    int totalCount = 0;
    for (var element in cartItems) {
      totalCount += element.count;
    }
    return totalCount;
  }

  double get totalAmount {
    var cartItems = instance.cartItems;
    double totalAmount = 0;
    for (var element in cartItems) {
      totalAmount += element.product.rate * element.count;
    }
    return totalAmount;
  }

  double get totalDiscountAmount {
    var cartItems = instance.cartItems;
    double totalDiscount = 0;
    for (var element in cartItems) {
      totalDiscount += (element.product.rate * element.product.discount) *
          element.count /
          100;
    }
    return totalDiscount;
  }

  double get cartTotalAmount {
    return totalAmount - totalDiscountAmount + deliveryCharge;
  }
}
