import 'package:dog_app/core/exports.dart';

class DoctorProfileArguments {
  const DoctorProfileArguments({
    required this.id,
    required this.category,
    required this.experience,
    required this.isAvailable,
    required this.name,
    required this.petsHealed,
    required this.rating,
    required this.reviewerName,
    required this.reviewText,
    required this.reviewTime,
    required this.image,
  });
  final int id;
  final bool isAvailable;
  final String name;
  final String category;
  final String experience;
  final String petsHealed;
  final double rating;
  final String reviewText;
  final String reviewerName;
  final String reviewTime;
  final String image;
}
