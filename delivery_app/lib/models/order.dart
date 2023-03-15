import 'dart:ffi';

import 'package:delivery_app/models/cart_item.dart';

import 'food.dart';

class Order{
    num id;
    DateTime date;
    Double total;
    List<Map<String,Food>> items;

    Order({required this.id, required this.date, required this.total, required this.items});

    Order.fromJson(Map<String, dynamic> json)
        : id = json['id'],
          date = json['date'],
          total = json['total'],
          items = json['items'];
}