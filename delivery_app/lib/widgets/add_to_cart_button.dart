import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../models/cart.dart';
import '../models/cart_item.dart';
import '../screens/shopping_cart.dart';
class AddToCartButton extends StatelessWidget {
  final CartItem item;
  final Cart cart;

  AddToCartButton({required this.item, required this.cart});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        cart.add(item);
        print(cart.items.length);
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ShoppingCart(cartItems: cart.items)),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${item.title} added to cart')),
        );
      },
       icon:Icon(
        Icons.add_shopping_cart_rounded,
        color: kGreen,
      ),

    );
  }
}
