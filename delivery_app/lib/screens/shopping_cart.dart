import 'package:delivery_app/constants/colors.dart';
import 'package:flutter/material.dart';

import '../models/cart_item.dart';
import 'home_page.dart';
import 'orders.dart';

class ShoppingCart extends StatefulWidget {
  final List<CartItem> cartItems;

  const ShoppingCart({Key? key, required this.cartItems}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

int _selectedIndex = 0;

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
                    '${widget.cartItems.length} items',
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
                itemCount: widget.cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Image.asset(
                            widget.cartItems[index].imageUrl,
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
                                widget.cartItems[index].title,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '\$${widget.cartItems[index].price}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: kGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(onPressed: (){
                          setState(() {
                            widget.cartItems.remove(widget.cartItems[index]);
                          });
                        }, icon:
                        Icon(Icons.delete, color: kGreen, size: 30,),)
                      ],
                    ),
                  );
                },
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
                MaterialPageRoute(builder: (context) => HomePage(cartItems: widget.cartItems,)),
              );
            } else if (_selectedIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCart(cartItems: widget.cartItems),
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
            icon: Icon
              (Icons.history),
            label: 'Orders',
          ),
        ],
      ),
    );
  }

}
