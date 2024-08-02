import 'package:ecoder/screens/home_page.dart';
import 'package:ecoder/screens/subcategory_page.dart';
import 'package:flutter/material.dart';

import '../screens/category_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _currentIndex = 0;

  final screens = [ 
    const HomePage(),
    const CategoryPage(),
    const SubcategoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar:
       ClipRRect(
       borderRadius: const BorderRadius.only(
           topLeft: Radius.circular(20), // Change this value to your desired radius
            topRight: Radius.circular(20), // Change this value to your desired radius
           ),
      child: NavigationBar(
         backgroundColor: Color.fromRGBO(230, 57, 70,1), // RGB color (0, 0, 255) with opacity 1

        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.category),
            label: 'CategoryPage',
          ),
          NavigationDestination(
            icon: Icon(Icons.subdirectory_arrow_left),
            label: 'Subcategory',
          ),
        ],
      ),
       ),
       );
  }
}