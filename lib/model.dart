import 'dart:convert';

class Shoe {
  final int id;
  final String name;
  final String brand;
  final double price;
  final String description;
  final String image;
  final List<int> size;
  final List<String> color;

  Shoe({
    required this.id,
    required this.name,
    required this.brand,
    required this.price,
    required this.description,
    required this.image,
    required this.size,
    required this.color,
  });

  factory Shoe.fromJson(Map<String, dynamic> json) {
    return Shoe(
      id: json['id'],
      name: json['name'],
      brand: json['brand'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      image: json['image'],
      size: List<int>.from(json['size']),
      color: List<String>.from(json['color']),
    );
  }

  static List<Shoe> fromJsonList(String jsonString) {
    final data = json.decode(jsonString);
    return (data['shoes'] as List).map((e) => Shoe.fromJson(e)).toList();
  }
}
