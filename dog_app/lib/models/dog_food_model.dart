class DogFoodModel {
  final String name;
  final String subtitle;
  final double price;
  final double oldPrice;
  final int discount;
  final int id;
  final String image;
  bool isFavorite;

  DogFoodModel({
    required this.name,
    required this.subtitle,
    required this.price,
    required this.id,
    required this.oldPrice,
    required this.discount,
    required this.image,
    this.isFavorite = false,
  });
}
