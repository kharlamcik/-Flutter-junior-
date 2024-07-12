class Product {
  final int id;
  final double rating;
  final String productName;
  final String category;
  final int price;
  final String description;
  final List<String> images;

  Product({
    required this.id,
    required this.rating,
    required this.productName,
    required this.category,
    required this.price,
    required this.description,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      rating: json['rating'],
      productName: json['productName'],
      category: json['category'],
      price: json['price'],
      description: json['description'],
      images: List<String>.from(json['images']),
    );
  }
}
