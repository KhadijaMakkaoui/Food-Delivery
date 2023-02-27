import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/food.dart';
class FoodQuantity extends StatelessWidget {
  final Food food;

  FoodQuantity(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 40,
      child:Stack(
        children: [
          Align(
            alignment: Alignment(-0.3,0),
            child: Container(
              width:120,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Text('\$',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(food.price.toString(),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

            ),
          ),
          Align(
            alignment: Alignment(0.3,0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('-',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    shape: BoxShape.circle,
                    ),
                    child: Text(food.quantity.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text('+',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
