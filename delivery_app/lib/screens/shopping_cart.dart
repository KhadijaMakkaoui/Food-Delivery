import 'package:delivery_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../models/cart_item.dart';
class ShoppingCart extends StatefulWidget {

  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}
final List<CartItem> cartItems = [
  CartItem(
    name: 'Product 1',
    price: 10.0,
    imageUrl: 'https://via.placeholder.com/150',
  ),
  CartItem(
    name: 'Product 2',
    price: 20.0,
    imageUrl: 'https://via.placeholder.com/150',
  ),
  CartItem(
    name: 'Product 3',
    price: 30.0,
    imageUrl: 'https://via.placeholder.com/150',
  ),
  CartItem(
    name: 'Product 4',
    price: 40.0,
    imageUrl: 'https://via.placeholder.com/150',
  ),
];

class _ShoppingCartState extends State<ShoppingCart> {
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
                      '${cartItems.length} items',
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
                  itemCount: cartItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/dish1.png',
                            width: 80,
                            height: 80,
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cartItems[index].name,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '\$${cartItems[index].price}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: kGreen,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }

  }

