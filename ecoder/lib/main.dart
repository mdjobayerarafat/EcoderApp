import 'package:ecoder/screens/home_page.dart';
import 'package:ecoder/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecoder',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF00001d),
      ),
      
       home: HomePage(),
        // bottomNavigationBar: MyNavigationBar(),
             
       
    );
    
  }
}