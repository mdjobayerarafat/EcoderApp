import 'package:ecoder/screens/splash_screen.dart';
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
      
       home:     const SafeArea(
         child: Scaffold(
          body:SplashScreen(),
        
             ),
       ),
    );
    
  }
}