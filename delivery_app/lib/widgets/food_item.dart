import 'package:delivery_app/constants/colors.dart';
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
        child: Row(children: [
          Container(
            height: 110,
            width: 110,
            child: Image.asset(
              food.imgUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
              child: Container(
              padding: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
              ),
              child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:[
                        Text(food.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                        )
                      ]
                    ),
                    const SizedBox(height: 5,),
                    Text(food.desc,
                        style:TextStyle(
                          color: food.highLight? kPrimaryColor:Colors.grey.withOpacity(0.4),
                          height: 1.5,
                        )
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      children: [
                        const Text(
                          '\$',
                          style:TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ) ,
                        ),
                        Text(
                          '${food.price}',
                          style:const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ) ,
                        ),
                      ],
                    )
            ]),
          ))
        ]));
  }
}
