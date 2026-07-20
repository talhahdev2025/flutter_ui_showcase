import 'package:dog_app/core/exports.dart';

// final List<Doctor> doctors = [
//   Doctor(
//     id: 1,
//     name: 'Dr. Emma',
//     category: 'Dentist',
//     rating: 4.9,
//     experience: '10+ years',
//     reviews: 245,
//     distance: 1.3,
//     fee: 40.20,
//     available: true,
//     image: 'https://images.pexels.com/photos/5215024/pexels-photo-5215024.jpeg',
//   ),
//   Doctor(
//     id: 2,
//     name: 'Dr. Liam',
//     category: 'Cardiologist',
//     rating: 2.1,
//     experience: '12+ years',
//     reviews: 98,
//     distance: 2.1,
//     fee: 55.04,
//     available: true,
//     image: 'https://images.pexels.com/photos/5726703/pexels-photo-5726703.jpeg',
//   ),
//   Doctor(
//     id: 3,
//     name: 'Dr. Olivia',
//     category: 'Dermatologist',
//     rating: 5.0,
//     experience: '8+ years',
//     reviews: 180,
//     distance: 0.9,
//     fee: 50.55,
//     available: false,
//     image: 'https://images.pexels.com/photos/7089401/pexels-photo-7089401.jpeg',
//   ),
//   Doctor(
//     id: 4,
//     name: 'Dr. Noah',
//     category: 'Neurologist',
//     rating: 4.0,
//     experience: '15+ years',
//     reviews: 320,
//     distance: 3.4,
//     fee: 75.99,
//     available: true,
//     image: 'https://images.pexels.com/photos/5998468/pexels-photo-5998468.jpeg',
//   ),
//   Doctor(
//     id: 5,
//     name: 'Dr. Sophia',
//     category: 'Pediatrician',
//     rating: 2.0,
//     experience: '6+ years',
//     reviews: 75,
//     distance: 1.7,
//     fee: 35.5,
//     available: true,
//     image: 'https://images.pexels.com/photos/7580259/pexels-photo-7580259.jpeg',
//   ),
//   Doctor(
//     id: 6,
//     name: 'Dr. James',
//     category: 'Orthopedic',
//     rating: 3.0,
//     experience: '18+ years',
//     reviews: 210,
//     distance: 2.8,
//     fee: 65.2,
//     available: false,
//     image: 'https://images.pexels.com/photos/5452201/pexels-photo-5452201.jpeg',
//   ),
//   Doctor(
//     id: 7,
//     name: 'Dr. Isabella',
//     category: 'Gynecologist',
//     rating: 5.0,
//     experience: '11+ years',
//     reviews: 290,
//     distance: 1.5,
//     fee: 60.56,
//     available: true,
//     image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
//   ),
//   Doctor(
//     id: 8,
//     name: 'Dr. Benjamin',
//     category: 'Psychiatrist',
//     rating: 4.0,
//     experience: '14+ years',
//     reviews: 160,
//     distance: 4.0,
//     fee: 70.99,
//     available: true,
//     image: 'https://images.pexels.com/photos/6129507/pexels-photo-6129507.jpeg',
//   ),
//   Doctor(
//     id: 9,
//     name: 'Dr. Mia',
//     category: 'Ophthalmologist',
//     rating: 5.0,
//     experience: '9+ years',
//     reviews: 200,
//     distance: 1.2,
//     fee: 45.1,
//     available: false,
//     image: 'https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg',
//   ),
//   Doctor(
//     id: 10,
//     name: 'Dr. Lucas',
//     category: 'ENT Specialist',
//     rating: 4.0,
//     experience: '13+ years',
//     reviews: 185,
//     distance: 2.3,
//     fee: 55.12,
//     available: true,
//     image: 'https://images.pexels.com/photos/5327921/pexels-photo-5327921.jpeg',
//   ),
//   Doctor(
//     id: 11,
//     name: 'Dr. Charlotte',
//     category: 'General Physician',
//     rating: 2.0,
//     experience: '7+ years',
//     reviews: 110,
//     distance: 0.7,
//     fee: 30.55,
//     available: true,
//     image: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg',
//   ),
//   Doctor(
//     id: 12,
//     name: 'Dr. Henry',
//     category: 'Surgeon',
//     rating: 4.0,
//     experience: '20+ years',
//     reviews: 410,
//     distance: 3.6,
//     fee: 90.90,
//     available: false,
//     image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
//   ),
// ];

final List<Doctor> doctors = [
  Doctor(
    id: 0,
    name: 'Dr. Emma',
    category: 'Dentist',
    rating: 4.9,
    experience: '10+ years',
    reviews: 245,
    patientsHealed: '3.2k',
    distance: 1.3,
    fee: 40.20,
    available: true,
    image: 'https://images.pexels.com/photos/5215024/pexels-photo-5215024.jpeg',
    reviewText: 'Excellent dentist who made my treatment completely painless.',
    reviewerName: 'Michael Carter',
    reviewTime: '1 day ago',
    availableSlots: ['09:00 AM', '11:30 AM', '02:00 PM'],
    about:
        'Dr. Emma is an experienced dentist specializing in cosmetic and restorative dentistry with over 10 years of clinical practice.',
    chatList: [
      {'text': 'Hi there! How is Bruno doing today?', 'isMe': false},
      {'text': 'yeah he is great!', 'isMe': true},
    ],
  ),

  Doctor(
    id: 1,
    name: 'Dr. Liam',
    category: 'Cardiologist',
    rating: 2.1,
    experience: '12+ years',
    reviews: 98,
    patientsHealed: '2.6k',
    distance: 2.1,
    fee: 55.04,
    available: true,
    image: 'https://images.pexels.com/photos/5726703/pexels-photo-5726703.jpeg',
    reviewText: 'Very knowledgeable and explained every step clearly.',
    reviewerName: 'Sarah Wilson',
    reviewTime: '3 days ago',
    availableSlots: ['10:00 AM', '12:00 PM', '03:30 PM'],
    about:
        'Dr. Liam specializes in heart disease diagnosis, cardiac rehabilitation, and preventive cardiology.',
    chatList: [
      {'text': 'Hi there! How is Bruno doing today?', 'isMe': false},
      {
        'text':
            'He is doing much better today. He has been eating well and seems more active.',
        'isMe': true,
      },
      {
        'text':
            'That is wonderful to hear! Has he been taking his medication on time?',
        'isMe': false,
      },
      {'text': 'Yes, every morning just as you recommended.', 'isMe': true},
      {
        'text':
            'Perfect. Continue the treatment for another five days and let me know if anything changes.',
        'isMe': false,
      },
    ],
  ),

  Doctor(
    id: 2,
    name: 'Dr. Olivia',
    category: 'Dermatologist',
    rating: 5.0,
    experience: '8+ years',
    reviews: 180,
    patientsHealed: '1.9k',
    distance: 0.9,
    fee: 50.55,
    available: false,
    image: 'https://images.pexels.com/photos/7089401/pexels-photo-7089401.jpeg',
    reviewText: 'My skin improved significantly after following her treatment.',
    reviewerName: 'Emily Brown',
    reviewTime: '5 days ago',
    availableSlots: ['09:30 AM', '01:00 PM', '04:00 PM'],
    about:
        'Dr. Olivia treats skin, hair, and nail disorders with modern dermatological procedures.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 3,
    name: 'Dr. Noah',
    category: 'Neurologist',
    rating: 4.0,
    experience: '15+ years',
    reviews: 320,
    patientsHealed: '4.8k',
    distance: 3.4,
    fee: 75.99,
    available: true,
    image: 'https://images.pexels.com/photos/5998468/pexels-photo-5998468.jpeg',
    reviewText: 'Professional, calm, and very thorough during consultations.',
    reviewerName: 'Daniel Lee',
    reviewTime: '1 week ago',
    availableSlots: ['08:30 AM', '11:00 AM', '02:30 PM'],
    about:
        'Dr. Noah specializes in diagnosing and treating disorders of the brain, spinal cord, and nervous system.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 4,
    name: 'Dr. Sophia',
    category: 'Pediatrician',
    rating: 2.0,
    experience: '6+ years',
    reviews: 75,
    patientsHealed: '1.5k',
    distance: 1.7,
    fee: 35.50,
    available: true,
    image: 'https://images.pexels.com/photos/7580259/pexels-photo-7580259.jpeg',
    reviewText: 'She was incredibly kind and caring with my child.',
    reviewerName: 'Jessica Adams',
    reviewTime: '2 days ago',
    availableSlots: ['09:00 AM', '11:00 AM', '01:30 PM'],
    about:
        'Dr. Sophia provides comprehensive healthcare services for infants, children, and adolescents.',
    chatList: [
      {'text': 'Hi there! How is Bruno doing today?', 'isMe': false},
      {
        'text':
            'He is doing much better today. He has been eating well and seems more active.',
        'isMe': true,
      },
      {
        'text':
            'That is wonderful to hear! Has he been taking his medication on time?',
        'isMe': false,
      },
      {'text': 'Yes, every morning just as you recommended.', 'isMe': true},
      {
        'text':
            'Perfect. Continue the treatment for another five days and let me know if anything changes.',
        'isMe': false,
      },
    ],
  ),

  Doctor(
    id: 5,
    name: 'Dr. James',
    category: 'Orthopedic',
    rating: 3.0,
    experience: '18+ years',
    reviews: 210,
    patientsHealed: '5.1k',
    distance: 2.8,
    fee: 65.20,
    available: false,
    image: 'https://images.pexels.com/photos/5452201/pexels-photo-5452201.jpeg',
    reviewText: 'Helped me recover quickly from my knee injury.',
    reviewerName: 'Ryan Cooper',
    reviewTime: '4 days ago',
    availableSlots: ['10:00 AM', '01:00 PM', '03:00 PM'],
    about:
        'Dr. James specializes in bone, joint, ligament, and sports injury treatments.',
    chatList: [
      {'text': 'Hi there! How is Bruno doing today?', 'isMe': false},
      {
        'text':
            'He is doing much better today. He has been eating well and seems more active.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 6,
    name: 'Dr. Isabella',
    category: 'Gynecologist',
    rating: 5.0,
    experience: '11+ years',
    reviews: 290,
    patientsHealed: '3.7k',
    distance: 1.5,
    fee: 60.56,
    available: true,
    image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
    reviewText: 'Very supportive and made me feel comfortable throughout.',
    reviewerName: 'Olivia Harris',
    reviewTime: '6 days ago',
    availableSlots: ['09:00 AM', '12:30 PM', '03:30 PM'],
    about:
        'Dr. Isabella specializes in women’s reproductive health, pregnancy care, and preventive gynecology.',
         chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 7,
    name: 'Dr. Benjamin',
    category: 'Psychiatrist',
    rating: 4.0,
    experience: '14+ years',
    reviews: 160,
    patientsHealed: '2.9k',
    distance: 4.0,
    fee: 70.99,
    available: true,
    image: 'https://images.pexels.com/photos/6129507/pexels-photo-6129507.jpeg',
    reviewText: 'Excellent listener who genuinely cares about patients.',
    reviewerName: 'Sophia Walker',
    reviewTime: '3 days ago',
    availableSlots: ['10:30 AM', '01:30 PM', '04:30 PM'],
    about:
        'Dr. Benjamin provides treatment for anxiety, depression, stress, and other mental health conditions.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 8,
    name: 'Dr. Mia',
    category: 'Ophthalmologist',
    rating: 5.0,
    experience: '9+ years',
    reviews: 200,
    patientsHealed: '2.3k',
    distance: 1.2,
    fee: 45.10,
    available: false,
    image: 'https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg',
    reviewText: 'My vision improved greatly after her treatment.',
    reviewerName: 'Nathan Scott',
    reviewTime: '5 days ago',
    availableSlots: ['09:30 AM', '12:00 PM', '02:30 PM'],
    about:
        'Dr. Mia specializes in comprehensive eye care, cataracts, glaucoma, and vision correction.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 9,
    name: 'Dr. Lucas',
    category: 'ENT Specialist',
    rating: 4.0,
    experience: '13+ years',
    reviews: 185,
    patientsHealed: '3.0k',
    distance: 2.3,
    fee: 55.12,
    available: true,
    image: 'https://images.pexels.com/photos/5327921/pexels-photo-5327921.jpeg',
    reviewText: 'Solved my chronic sinus problem effectively.',
    reviewerName: 'Grace Evans',
    reviewTime: '1 week ago',
    availableSlots: ['09:00 AM', '11:30 AM', '03:00 PM'],
    about:
        'Dr. Lucas treats conditions affecting the ear, nose, throat, and related structures.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 10,
    name: 'Dr. Charlotte',
    category: 'General Physician',
    rating: 2.0,
    experience: '7+ years',
    reviews: 110,
    patientsHealed: '2.4k',
    distance: 0.7,
    fee: 30.55,
    available: true,
    image: 'https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg',
    reviewText:
        'Dr. Charlotte was incredibly patient and professional. Her expertise made me feel comfortable throughout the consultation.',
    reviewerName: 'Sarah Jenkins',
    reviewTime: '2 days ago',
    availableSlots: ['09:00 AM', '11:30 AM', '02:00 PM'],
    about:
        'Dr. Charlotte is a board-certified General Physician with over 7 years of experience. She specializes in preventive healthcare, diagnosis, and treatment of common medical conditions while providing compassionate patient care.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),

  Doctor(
    id: 11,
    name: 'Dr. Henry',
    category: 'Surgeon',
    rating: 4.0,
    experience: '20+ years',
    reviews: 410,
    patientsHealed: '6.2k',
    distance: 3.6,
    fee: 90.90,
    available: false,
    image: 'https://images.pexels.com/photos/5327585/pexels-photo-5327585.jpeg',
    reviewText: 'Outstanding surgeon with exceptional attention to detail.',
    reviewerName: 'Christopher Hall',
    reviewTime: '2 days ago',
    availableSlots: ['08:00 AM', '11:00 AM', '02:00 PM'],
    about:
        'Dr. Henry is a highly experienced general surgeon specializing in minimally invasive and complex surgical procedures.',
    chatList: [
      {
        'text':
            'Keep him on the current diet for another week. After that, gradually mix in his regular food.',
        'isMe': false,
      },
      {
        'text':
            'Got it. Thanks for all your help. I really appreciate the guidance.',
        'isMe': true,
      },
    ],
  ),
];
