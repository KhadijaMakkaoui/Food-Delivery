import 'package:delivery_app/constants/colors.dart';
import 'package:delivery_app/widgets/food_list.dart';
import 'package:delivery_app/widgets/restaurant_info.dart';
import 'package:flutter/material.dart';

import '../../models/restaurant.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/food_list_view.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected=0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_outlined,
              Icons.search_outlined
          ),
          RestaurantInfo(),
          FoodList(selected,
              (index){
            setState(() {
              selected=index;
            });
            pageController.jumpToPage(index);
            }, restaurant),
          Expanded(
            child: FoodListView(
              selected,
                (int index){
                  setState(() {
                    selected=index;
                  });
                },
              pageController,
              restaurant
            ),
          )
        ],
      ),

    );
  }
}


