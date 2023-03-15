import 'package:delivery_app/models/cart.dart';
import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/models/food.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:delivery_app/screens/shopping_cart.dart';
import 'package:delivery_app/services/restoService.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../services/foodService.dart';
import '../widgets/add_to_cart_button.dart';

class Menu extends StatefulWidget {
  Restaurant? restaurantRef;

  Menu({this.restaurantRef});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Restaurant _restaurant;

  final cart = Cart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            FutureBuilder<Restaurant>(
                future: widget.restaurantRef != null
                    ? RestoService()
                        .getRestaurantByRef(widget.restaurantRef!.label)
                    : null,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final restaurant = snapshot.data!;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Restaurant',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                restaurant.name,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Image.asset(
                            restaurant.logoUrl,
                            height: 60,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(child: Text(''));
                  }
                }),
            SizedBox(height: 20),
            FutureBuilder<List<Food>>(
                future: FoodService()
                    .getFoodsByRestaurant(widget.restaurantRef!.label),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasData) {
                    List<Food> items = snapshot.data!;
                    print(items.first.name);
                    print(items.length);
                    return Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: List.generate(items.length, (index) {
                        return Container(
                          width: (MediaQuery.of(context).size.width - 60) / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      items[index].imgUrl,
                                      height: 200,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                children: [
                                  Text(
                                    items[index].name,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        items[index].price.toString() + ' DH',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      AddToCartButton(
                                          item: items[index], cart: cart),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  } else {
                    return Center(child: Text(''));
                  }
                }),
          ]),
        ),
      ),
    );
  }

  /*Widget _buildItemCard() {
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  item.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

            ],
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                item.title.toString(),
                style: TextStyle(
                  fontSize: 15,

                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.price.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                 */ /* const Icon(
                    Icons.add_shopping_cart_rounded,
                    color: kGreen,
                  ),*/ /*
                  AddToCartButton(item: item,cart: cart),

                ],
              ),
            ],
          ),
        ],
      ),

    );
  }*/
}
/*

Widget _buildCategoryCard(
    BuildContext context, String title, String imagePath) {
  return Container(
    width: 100,
    margin: const EdgeInsets.symmetric(horizontal: 6),
    child: GestureDetector(
      onTap: () {
        */
/*Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Menu(item, cart),
          ),
        );*/ /*

      },
      child: Card(
        elevation: 0,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 50,
              */
/*width: double.infinity,*/ /*

              fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}*/
