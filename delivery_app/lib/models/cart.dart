import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_app/models/food.dart';

import 'cart_item.dart';

class Cart{
  final List<Food> _items = [];
  List<Food> get items => _items;
  void add(Food item){
    /*if(_items.contains(item)){
      _items[_items.indexOf(item)].quantity++;
    }else*/
    _items.add(item);
    /*print(_items.length)  ;*/
  }
  void remove(CartItem item){
    _items.remove(item);
  }
  void clear(){
    _items.clear();
  }
/*  double get total {
    return _items.fold(
        0,
            (sum, item) => sum + item.price * item.restoRef);
  }*/
}