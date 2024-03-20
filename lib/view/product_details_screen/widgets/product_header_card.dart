import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../model/product_model.dart';
import 'elevated_card.dart';

class ProductHeaderCard extends StatelessWidget {
  const ProductHeaderCard({
    super.key,
    required this.pageController,
    required this.item,
  });

  final PageController pageController;
  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return ElevatedCard(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return Image.network(
                      item.imageUrl,
                      width: MediaQuery.sizeOf(context).width,
                    );
                  },
                  itemCount: 5,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.green.shade50,
                  foregroundColor: Colors.green.shade700,
                  child: const Icon(Icons.share),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              effect: ScaleEffect(
                dotColor: Colors.black12,
                activeDotColor: Colors.green.shade700,
                dotHeight: 8,
                dotWidth: 8,
                scale: 1.5,
              ),
              count: 5,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            item.itemName,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Text(
                      item.rating.toStringAsFixed(1),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Text('${item.ratingCount} ratings'),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '\$${(item.rate * (100 - item.discount) / 100).toStringAsFixed(0)}',
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                '\$${item.rate.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 15,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${item.discount}% off',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
