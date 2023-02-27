import 'package:delivery_app/constants/colors.dart';
import 'package:delivery_app/widgets/food_list.dart';
import 'package:delivery_app/widgets/restaurant_info.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            Icons.arrow_back_ios_outlined,
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count:restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 10,
                  height: 10,
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  width: 12,
                  height: 12,
                  color: kBackground,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    color: kPrimaryColor,
                    width: 2,
                  ),
                ),
              ),
              onDotClicked: (index){
                pageController.jumpToPage(index);
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: kPrimaryColor,
        child: const Icon(
            Icons.shopping_cart_outlined,
          color: Colors.black,
          size: 30,
        ),

      ),

    );
  }
}


