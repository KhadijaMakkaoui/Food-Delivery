import 'package:cloud_firestore/cloud_firestore.dart';

class Cart{
  final String id;
  final String title;
  final int quantity;
  final double price;

  Cart({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
  });
  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      title: json['title'],
      quantity: json['quantity'],
      price: json['price'],
    );
  }
  factory Cart.fromDocument(DocumentSnapshot doc) {
    return Cart.fromJson(doc.data() as Map<String, dynamic>);
  }
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'quantity': quantity,
    'price': price,
  };

}