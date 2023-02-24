import 'package:delivery_app/constants/colors.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;

  FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final categoriy = restaurant.menu.keys.toList();
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)=>GestureDetector(
            onTap: ()=>callback(index),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: selected== index? kPrimaryColor: Colors.white,
              ),
              child: Text(
                categoriy[index],
                style: TextStyle(
                  color: selected== index? Colors.white: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          separatorBuilder: (_,index)=>SizedBox(width: 20,),
          itemCount: categoriy.length),
      
    );
  }
}
