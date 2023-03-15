import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/screens/restaurants.dart';
import 'package:flutter/material.dart';

import '../models/restaurant.dart';
class RestoService extends StatefulWidget {
  const RestoService({Key? key}) : super(key: key);

  @override
  State<RestoService> createState() => _RestoServiceState();

  Future createRestaurant({required String label,required String name,required String waitTime,required String distance ,required String logoUrl,required String desc,required String score}) async {
    final docResto=FirebaseFirestore.instance.collection('restaurants').doc(label);
    final json={
      'label':label,
      'name':name,
      'waitTime':waitTime,
      'distance':distance,
      'logoUrl':logoUrl,
      'desc':desc,
      'score':score,
    };
    await docResto.set(json);
  }

  Future<List<Restaurant>> getAllRestaurants() async {
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('restaurants').get();
    List<Restaurant> restaurants =
    querySnapshot.docs.map((doc) => Restaurant.fromJson(doc.data()as Map<String, dynamic>)).toList();
    return restaurants;
  }
  Future<Restaurant> getRestaurantByRef(String ref) async {
    QuerySnapshot querySnapshot =
    await FirebaseFirestore.instance.collection('restaurants').where('label',isEqualTo: ref).get();
    Restaurant restaurant =
    Restaurant.fromJson(querySnapshot.docs.first.data() as Map<String, dynamic>);
    return restaurant;
  }
}

class _RestoServiceState extends State<RestoService> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
