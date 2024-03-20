import 'package:flutter/material.dart';

import '../../../core/constants/image_constants.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.yellow.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Image.asset(
              ImageConstants.vegetableBasketPng,
              fit: BoxFit.cover,
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Organic',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                ),
              ),
              Text(
                'vegetables',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
