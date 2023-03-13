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
}