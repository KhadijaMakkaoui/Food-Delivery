import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/food.dart';

class FoodService extends StatefulWidget {
  const FoodService({Key? key}) : super(key: key);

  @override
  State<FoodService> createState() => _FoodServiceState();
  /*Future <List<Food>> getAllFoods() async {
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('foods').get();
    List<Food> foods =
    querySnapshot.docs.map((doc) => Food.fromJson(doc.data()as Map<String, dynamic>)).toList();
    return foods;
  }*/
  Future<List<Food>> getFoodsByRestaurant(String RestoRef) async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('food')
        .where('restoRef', isEqualTo: RestoRef)
        .get();
    List<Food> foods = querySnapshot.docs
        .map((doc) => Food.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
    return foods;
  }
}

class _FoodServiceState extends State<FoodService> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
