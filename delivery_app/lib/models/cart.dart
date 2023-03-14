import 'package:cloud_firestore/cloud_firestore.dart';

import 'cart_item.dart';

class Cart{
  final List<CartItem> _items = [];
  List<CartItem> get items => _items;
  void add(CartItem item){
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
  double get total {
    return _items.fold(
        0,
            (sum, item) => sum + item.price * item.quantity);
  }
}