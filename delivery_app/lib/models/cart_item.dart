class CartItem {
  final String name;
  final double price;
  final String imageUrl;

  CartItem({required this.name, required this.price, required this.imageUrl});

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }

}