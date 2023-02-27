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
            /*Align(
              alignment: Alignment.center,
              child: Container(
                child: Image.asset(food.imgUrl,
                    fit: BoxFit.cover),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
