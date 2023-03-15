import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/constants/colors.dart';
import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';

import '../models/cart_item.dart';
import '../models/order.dart';
import 'home_page.dart';
import 'orders.dart';

class ShoppingCart extends StatefulWidget {

  final List<Food> foodtems;

  ShoppingCart({Key? key, required this.foodtems}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

int _selectedIndex = 0;

class _ShoppingCartState extends State<ShoppingCart> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
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
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.foodtems.length} items',
                    style: TextStyle(
                      color: kGreen,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.foodtems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            widget.foodtems[index].imgUrl,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.foodtems[index].name,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '\$${widget.foodtems[index].price}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              widget.foodtems.remove(widget.foodtems[index]);
                            });
                          },
                          icon: Icon(
                            Icons.delete,
                            color: kGreen,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${widget.foodtems.fold(0, (sum, item) => sum + item.price.toInt())}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add the food items to the Firestore "orders" collection
                    FirebaseFirestore.instance.collection('orders').add({
                      'date': DateTime.now(),
                      'total': widget.foodtems.fold(0, (sum, item) => sum + item.price.toInt()),
                      'items': widget.foodtems.map((food) => {
                        'name': food.name,
                        'price': food.price,
                        'image': food.imgUrl,
                      }).toList(),
                      'timestamp': FieldValue.serverTimestamp(),
                    }).then((value) {
                      // Success
                      print('Order added successfully');
                      //Clear the cart
                      widget.foodtems.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Orders(),
                        ),
                      );
                    }).catchError((error) {
                      // Error
                      print('Failed to add order: $error');
                    });
                  },
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGreen,
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
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
                MaterialPageRoute(
                    builder: (context) => HomePage(
                          foodItems: widget.foodtems,
                        )),
              );
            } else if (_selectedIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCart(foodtems: widget.foodtems),
                ),
              );
            } else if (_selectedIndex == 2) {
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
