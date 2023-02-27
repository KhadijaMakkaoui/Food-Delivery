import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;

  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        color: kBackground,
                      ),
                    ))
              ]

            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.all(15),
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 5),
                      blurRadius: 25,
                    )
                  ],
                ),
                child: Image.asset(food.imgUrl,
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ));
  }
}
