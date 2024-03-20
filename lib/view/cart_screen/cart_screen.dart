import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui_task_20_march/controller/cart/cart_controller.dart';
import 'package:flutter_ui_task_20_march/model/product_model.dart';
import 'package:flutter_ui_task_20_march/view/product_details_screen/widgets/elevated_card.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.item});
  final ProductModel item;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartController cartController = CartController.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                ProductModel item = cartController.cartItems[index].product;
                return ElevatedCard(
                  elevation: 5,
                  child: Row(
                    children: [
                      Image.network(
                        item.imageUrl,
                        height: 100,
                        width: 100,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.itemName,
                              style: Theme.of(context).textTheme.titleMedium,
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
                                const SizedBox(width: 5),
                                Text(
                                  '\$${item.rate.toStringAsFixed(0)}',
                                  style: const TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '${item.discount}% off',
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green.shade700,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.green.shade700,
                                    size: 15,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(cartController.cartItems[index].count
                                    .toString()),
                                const SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green.shade700,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.green.shade700,
                                    size: 15,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.green.shade100,
                          child: Icon(
                            Icons.delete,
                            color: Colors.green.shade800,
                            size: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemCount: cartController.cartItems.length,
            ),
            const SizedBox(height: 10),
            ElevatedCard(
              padding: EdgeInsets.zero,
              elevation: 5,
              child: DefaultTextStyle(
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15).copyWith(bottom: 0),
                      child: Text('Price Details',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w800,
                                  )),
                    ),
                    const Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                    'Price ( ${cartController.totalNumberOfItems} item )'),
                              ),
                              Text(
                                  '\$${cartController.totalAmount.toStringAsFixed(2)}')
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Expanded(
                                child: Text('Discount'),
                              ),
                              Text(
                                '-\$${cartController.totalDiscountAmount.toStringAsFixed(2)}',
                                style: TextStyle(
                                  color: Colors.green.shade700,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Expanded(
                                child: Text('Delivery Charges'),
                              ),
                              Text('\$5.00')
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15).copyWith(top: 10),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              'Total Amount',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '\$${cartController.cartTotalAmount}',
                            style: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CartScreenBottomNavigationBar(),
    );
  }
}

class CartScreenBottomNavigationBar extends StatelessWidget {
  const CartScreenBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 65,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.green.shade600,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PROCEED TO CHECKOUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
