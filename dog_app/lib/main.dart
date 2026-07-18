import 'dart:math';

import 'core/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bruno the Dog',

      routes: {
        // AppRoutes.home: (context) => MyHomePage(),
        AppRoutes.services: (context) => Services(),
        AppRoutes.errorPage: (context) => ErrorWidget('error'),
      },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MyHomePage(),
    );
  }
}
