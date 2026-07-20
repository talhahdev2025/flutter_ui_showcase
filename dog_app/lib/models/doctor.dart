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
  final String patientsHealed;
  final String reviewText;
  final String reviewerName;
  final String reviewTime;
  final List<String> availableSlots;
  final String about;
  final List<Map<String, dynamic>> chatList;

  /*

 Doctor(    
    patientsHealed: '6.2k',
    review: 'Outstanding surgeon with exceptional attention to detail.',
    reviewerName: 'Christopher Hall',
    reviewTime: '2 days ago',
    availableSlots: ['08:00 AM', '11:00 AM', '02:00 PM'],
    about: 'Dr. Henry is a highly experienced general surgeon specializing in minimally invasive and complex surgical procedures.',
  ),
*/
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
    required this.about,
    required this.availableSlots,
    required this.patientsHealed,
    required this.reviewText,
    required this.reviewTime,
    required this.reviewerName,
    required this.chatList,
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
      about: map['about'],
      availableSlots: map['availableSlots'],
      patientsHealed: map['patientsHealed'],
      reviewText: map['reviewText'],
      reviewTime: map['reviewTime'],
      reviewerName: map['reviewerName'],
      chatList: map['chatList']
    );
  }
  // TODO: Edit JSON
  Map<String, dynamic> toJson() {
    return {
      // 'name': name,
      // 'category': category,
      // 'rating': rating,
      // 'image': image,
      // 'available': available,
      // 'distance': distance,
      // 'experience': experience,
      // 'fee': fee,
      // 'id': id,
      // 'reviews': reviews,
    };
  }
}
