/*
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../models/food.dart';
import 'food_quantity.dart';
class FoodDetail extends StatelessWidget {
  final Food food;
  FoodDetail(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      color: kBackground,
      child: Column(
        children: [
          Text(food.name,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(Icons.access_time_outlined, Colors.blue, food.waitTime),
              _buildIconText(Icons.star_outlined, Colors.amber, food.score.toString()),
              _buildIconText(Icons.local_fire_department_outlined, Colors.red, food.energy.toString()),
            ],
          ),
          const SizedBox(height: 30,),
          FoodQuantity(food),
          const SizedBox(height: 30,),
          Row(
            children: const [
              Text('Ingredients',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=> Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    Image.asset(food.ingredients[index].values.first,
                    width: 52,),
                    Text(food.ingredients[index].keys.first,                    ),
                  ],
                )
              ),
              separatorBuilder: (_,index)=>const SizedBox(width: 10,),
              itemCount: food.ingredients.length,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: const [
              Text('About',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text(food.about,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
              wordSpacing: 1.5,
            ),
          ),
        ],


      ),
    );
  }
}

Widget _buildIconText(IconData icon,Color color,String text){
  return Row(
    children: [
      Icon(icon,color: color,size: 20,),
      Text(text,
      style: const TextStyle(
        fontSize: 16,
      ),)
    ],
  );
}
*/
