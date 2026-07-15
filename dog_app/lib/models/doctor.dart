class Doctor {
  String name;
  String category;
  String image;
  num rating;

  Doctor({
    required this.name,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'],
      category: map['category'],
      image: map['image'],
      rating: map['rating'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'rating': rating,
      'image': image,
    };
  }
}
