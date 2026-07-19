import 'package:dog_app/core/exports.dart';

// final List<Doctor> doctors = [
//   Doctor(
//     name: 'Dr. Emma',
//     category: 'Dentist',
//     rating: 5,
//     image: 'https://images.pexels.com/photos/5215024/pexels-photo-5215024.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Liam',
//     category: 'Cardiologist',
//     rating: 2,
//     image: 'https://images.pexels.com/photos/5726703/pexels-photo-5726703.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Olivia',
//     category: 'Dermatologist',
//     rating: 5,
//     image: 'https://images.pexels.com/photos/7089401/pexels-photo-7089401.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Noah',
//     category: 'Neurologist',
//     rating: 4,
//     image: 'https://images.pexels.com/photos/5998468/pexels-photo-5998468.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Sophia',
//     category: 'Pediatrician',
//     rating: 2,
//     image: 'https://images.pexels.com/photos/7580259/pexels-photo-7580259.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. James',
//     category: 'Orthopedic',
//     rating: 3,
//     image: 'https://images.pexels.com/photos/5452201/pexels-photo-5452201.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Isabella',
//     category: 'Gynecologist',
//     rating: 5,
//     image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Benjamin',
//     category: 'Psychiatrist',
//     rating: 4,
//     image: 'https://images.pexels.com/photos/6129507/pexels-photo-6129507.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Mia',
//     category: 'Ophthalmologist',
//     rating: 5,
//     image: 'https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Lucas',
//     category: 'ENT Specialist',
//     rating: 4,
//     image: 'https://images.pexels.com/photos/5327921/pexels-photo-5327921.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Charlotte',
//     category: 'General Physician',
//     rating: 2,
//     image: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg',
//   ),
//   Doctor(
//     name: 'Dr. Henry',
//     category: 'Surgeon',
//     rating: 4,
//     image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
//   ),
// ];

/*

https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg
https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg
https://images.pexels.com/photos/5327921/pexels-photo-5327921.jpeg
https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg
https://images.pexels.com/photos/6129507/pexels-photo-6129507.jpeg



https://api.dicebear.com/9.x/notionists/png?seed=Emma
https://api.dicebear.com/9.x/notionists/png?seed=Liam
https://api.dicebear.com/9.x/notionists/png?seed=Olivia
https://api.dicebear.com/9.x/notionists/png?seed=Noah

*/

final List<Doctor> doctors = [
  Doctor(
    id: 1,
    name: 'Dr. Emma',
    category: 'Dentist',
    rating: 4.9,
    experience: '10+ years',
    reviews: 245,
    distance: 1.3,
    fee: 40.20,
    available: true,
    image: 'https://images.pexels.com/photos/5215024/pexels-photo-5215024.jpeg',
  ),
  Doctor(
    id: 2,
    name: 'Dr. Liam',
    category: 'Cardiologist',
    rating: 2.1,
    experience: '12+ years',
    reviews: 98,
    distance: 2.1,
    fee: 55.04,
    available: true,
    image: 'https://images.pexels.com/photos/5726703/pexels-photo-5726703.jpeg',
  ),
  Doctor(
    id: 3,
    name: 'Dr. Olivia',
    category: 'Dermatologist',
    rating: 5.0,
    experience: '8+ years',
    reviews: 180,
    distance: 0.9,
    fee: 50.55,
    available: false,
    image: 'https://images.pexels.com/photos/7089401/pexels-photo-7089401.jpeg',
  ),
  Doctor(
    id: 4,
    name: 'Dr. Noah',
    category: 'Neurologist',
    rating: 4.0,
    experience: '15+ years',
    reviews: 320,
    distance: 3.4,
    fee: 75.99,
    available: true,
    image: 'https://images.pexels.com/photos/5998468/pexels-photo-5998468.jpeg',
  ),
  Doctor(
    id: 5,
    name: 'Dr. Sophia',
    category: 'Pediatrician',
    rating: 2.0,
    experience: '6+ years',
    reviews: 75,
    distance: 1.7,
    fee: 35.5,
    available: true,
    image: 'https://images.pexels.com/photos/7580259/pexels-photo-7580259.jpeg',
  ),
  Doctor(
    id: 6,
    name: 'Dr. James',
    category: 'Orthopedic',
    rating: 3.0,
    experience: '18+ years',
    reviews: 210,
    distance: 2.8,
    fee: 65.2,
    available: false,
    image: 'https://images.pexels.com/photos/5452201/pexels-photo-5452201.jpeg',
  ),
  Doctor(
    id: 7,
    name: 'Dr. Isabella',
    category: 'Gynecologist',
    rating: 5.0,
    experience: '11+ years',
    reviews: 290,
    distance: 1.5,
    fee: 60.56,
    available: true,
    image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
  ),
  Doctor(
    id: 8,
    name: 'Dr. Benjamin',
    category: 'Psychiatrist',
    rating: 4.0,
    experience: '14+ years',
    reviews: 160,
    distance: 4.0,
    fee: 70.99,
    available: true,
    image: 'https://images.pexels.com/photos/6129507/pexels-photo-6129507.jpeg',
  ),
  Doctor(
    id: 9,
    name: 'Dr. Mia',
    category: 'Ophthalmologist',
    rating: 5.0,
    experience: '9+ years',
    reviews: 200,
    distance: 1.2,
    fee: 45.1,
    available: false,
    image: 'https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg',
  ),
  Doctor(
    id: 10,
    name: 'Dr. Lucas',
    category: 'ENT Specialist',
    rating: 4.0,
    experience: '13+ years',
    reviews: 185,
    distance: 2.3,
    fee: 55.12,
    available: true,
    image: 'https://images.pexels.com/photos/5327921/pexels-photo-5327921.jpeg',
  ),
  Doctor(
    id: 11,
    name: 'Dr. Charlotte',
    category: 'General Physician',
    rating: 2.0,
    experience: '7+ years',
    reviews: 110,
    distance: 0.7,
    fee: 30.55,
    available: true,
    image: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg',
  ),
  Doctor(
    id: 12,
    name: 'Dr. Henry',
    category: 'Surgeon',
    rating: 4.0,
    experience: '20+ years',
    reviews: 410,
    distance: 3.6,
    fee: 90.90,
    available: false,
    image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
  ),
];
