class Doctor {
  final String name;
  final String category;
  final String image;
  final double rating;
  final int id;
  final String experience;
  final int reviews;
  final double distance;
  final double fee;
  final bool available;

  const Doctor({
    required this.name,
    required this.category,
    required this.image,
    required this.rating,
    required this.available,
    required this.distance,
    required this.experience,
    required this.fee,
    required this.id,
    required this.reviews,
  });

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'],
      category: map['category'],
      image: map['image'],
      rating: map['rating'],
      available: map['available'],
      distance: map['distance'],
      experience: map['experience'],
      fee: map['fee'],
      id: map['id'],
      reviews: map['reviews'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'rating': rating,
      'image': image,
      'available': available,
      'distance': distance,
      'experience': experience,
      'fee': fee,
      'id': id,
      'reviews': reviews,
    };
  }
}
