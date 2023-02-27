import 'package:delivery_app/screens/detail/widget/food_detail.dart';
import 'package:delivery_app/screens/detail/widget/food_image.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../models/food.dart';
import '../../widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
 final Food food;

 DetailPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.pop(context),
            ),
            FoodImg(food),
           FoodDetail(food),

          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 56,
        width: 100,
        child: RawMaterialButton(
            onPressed: () {  },
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            ),
          elevation: 2,
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children:[
              const Icon(Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                    shape: BoxShape.circle,
                ),
                child: Text(food.quantity.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
              )
            ]
          ),
          ),
        ),

    );
  }
}
