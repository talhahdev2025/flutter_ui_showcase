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
        AppRoutes.home: (context) => MyHomePage(),
        AppRoutes.services: (context) => Services(),
        AppRoutes.errorPage: (context) => ErrorPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  //TODO: update list after creating required screens
  final List<Widget> _pages = const [MyHomePage(), Services(), ErrorPage(),ErrorPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (value) => setState(() {
          _selectedIndex = value;
        }),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.pets_outlined),
            selectedIcon: Icon(Icons.pets),
            label: 'Services',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_rounded),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_rounded),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
