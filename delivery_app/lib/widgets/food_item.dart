import 'package:delivery_app/models/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
final Food food;
FoodItem(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child:Row(
        children:[
          Container(
            height: 110,
            width: 110,
                child: Image.asset(food.imgUrl,fit: BoxFit.fitHeight,),
            ),
        ]
      )
    );
  }
}
