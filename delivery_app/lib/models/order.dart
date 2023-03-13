import 'package:delivery_app/models/cart_item.dart';

class Order{
   num id;
    String name;
    String address;
    String phone;
    String status;
    DateTime date;
    num total;
    List<Map<String,CartItem>> items;

   Order(this.id, this.name, this.address, this.phone, this.status, this.date,
      this.total, this.items);

   factory Order.fromJson(Map<String, dynamic> json) {
     return Order(
       json['id'],
       json['name'],
       json['address'],
       json['phone'],
       json['status'],
       DateTime.parse(json['date']),
       json['total'],
       json['items'],
     );
   }
   Map<String, dynamic> toJson() => {
     'id': id,
     'name': name,
     'address': address,
     'phone': phone,
     'status': status,
     'date': date.toIso8601String(),
     'total': total,
     'items': items,
   };
}