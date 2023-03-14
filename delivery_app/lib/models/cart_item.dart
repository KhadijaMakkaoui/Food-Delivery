class CartItem {
  final int id;
  final String title;
  late final int quantity;
  final double price;
  final String imageUrl;

  CartItem({required this.id,required this.title,this.quantity=1, required this.price, required this.imageUrl});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      title: json['title'],
      quantity: json['quantity'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'quantity': quantity,
    'price': price,
    'imageUrl': imageUrl,
  };

}