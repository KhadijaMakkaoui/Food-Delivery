import 'package:delivery_app/constants/colors.dart';
import 'package:delivery_app/screens/restaurants.dart';
import 'package:delivery_app/screens/shopping_cart.dart';
import 'package:flutter/material.dart';

import 'menu.dart';
import 'orders.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi there!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),),
                      Text('Hungry Now?',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),

                    ],
                  ),
                  FloatingActionButton(
                    backgroundColor: kGreen,
                    onPressed: () {},
                    child: const Icon(Icons.shopping_cart_outlined,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategoryCard(context,'Burger', 'assets/images/burger.png'),
                    _buildCategoryCard(context,'Pizza', 'assets/images/pizza.png'),
                    _buildCategoryCard(context,'Pasta', 'assets/images/pasta.png'),
                    _buildCategoryCard(context,'wrap', 'assets/images/wrap.png'),
                    _buildCategoryCard(context,'Salad', 'assets/images/salade.png'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Restaurants',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Menu()));
                    },
                    child: Text('View All',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kGreen,
                    ),),
                  ),
                ],
              ),
              Container(
                height: 450,
                child:
                ListView.separated(
                  itemCount:6 /*foodList.length*/,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(height: 16),
                  itemBuilder: (BuildContext context, int index) {
                    /*final food = foodList[index];*/

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/pizzafood.png',
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  /*food.name*/ 'Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                            Row(children: [


                              Text(
                                '14 MAD',
                                style:
                                const TextStyle(
                                  fontSize: 18,

                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                  Icons
                                      .delivery_dining,
                                  color:
                                  kGreen),
                              const SizedBox(
                                width: 15,
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            }else if (_selectedIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingCart()),
              );
            }else if (_selectedIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Orders()),
              );
            }
          });
        },
        selectedItemColor: kGreen,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shopping Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Orders',
          ),
        ],
      ),
    );
  }
}
Widget _buildCategoryCard(BuildContext context,String title, String imagePath) {
  return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Menu(),
            ),
          );
        },
        child: Card(
          elevation: 0,
          child: Column(
            children: [
              Image.asset(
                imagePath,
                height: 50,
                /*width: double.infinity,*/
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
}