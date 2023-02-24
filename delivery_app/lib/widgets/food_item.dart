import 'package:delivery_app/models/food.dart';
import 'package:flutter/cupertino.dart';

class FoodItem extends StatelessWidget {
final Food food;
FoodItem(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(food.name),
    );
  }
}
