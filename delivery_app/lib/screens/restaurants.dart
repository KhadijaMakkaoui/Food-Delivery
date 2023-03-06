import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/restaurant.dart';
import '../widgets/custom_app_bar.dart';

class Restaurants extends StatefulWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  State<Restaurants> createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  final items = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            /*height: 100,*/
/*
*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      Text(
                        'Restaurants Nearby',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Find the best restaurants nearby',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            /*Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Popular Restaurants',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('View All',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),*/

                            Container(
                                height: 500,
                                child: ListView.separated(
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return
                                      Card(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Image.asset(
                                            'assets/images/mcdo.png',
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(
                                                        'McDonald\'s',
                                                        style: const TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(children: [
                                                          const Icon(
                                                              Icons
                                                                  .location_on,
                                                              color:
                                                              kPrimaryColor),
                                                          Text(
                                                            'Marrakech',
                                                            style:
                                                            const TextStyle(
                                                              fontSize: 15,

                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                        ]),
                                                        Row(children: [
                                                          const Icon(
                                                              Icons
                                                                  .star_outline,
                                                              color:
                                                                  kPrimaryColor),
                                                          Text(
                                                            '4.5',
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 15,
                                                          ),
                                                        ])
                                                      ]),
                                                ],
                                              )
                                              /*Text(
                                       */ /* items[index].title,*/ /*
                                        'Restaurant Name',
                                        style: TextStyle(fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),*/
                                              ),
                                        ],
                                    ));
                                  },
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const SizedBox(
                                      height: 10,
                                    );
                                  },
                                ))
                          ],
                        ),
                      )
                    ])
              ],
            ),
          ),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            // Respond to item press.
          },
        ),
    );
  }
}
