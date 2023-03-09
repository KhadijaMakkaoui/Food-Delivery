import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Row(
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
                          'McDonalds',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Image.asset(
                      'assets/images/mcdo.png',
                      height: 60,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: List.generate(6, (index) => _buildItemCard()),
              ),
            ]
            )
        ),
      ),
    );
  }

  Widget _buildItemCard() {
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
                  'assets/images/pizzafood.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    // handle adding item to shopping list
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Column(
            children: [
              Text(
                'Pizza Margherita',
                style: TextStyle(
                  fontSize: 15,

                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '110 MAD',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(
                    Icons.add_shopping_cart_rounded,
                    color: kGreen,
                  ),

                ],
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

Widget _buildCategoryCard(
    BuildContext context, String title, String imagePath) {
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