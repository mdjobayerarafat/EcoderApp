

import 'package:flutter/material.dart';


import '../widgets/navigation_bar.dart';
import 'home_page.dart';




class HomeePage extends StatelessWidget {
  const HomeePage({Key? key}) : super(key: key);

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
          body:HomePage(),
         bottomNavigationBar: MyNavigationBar(),
             ),
       ),
    );
  }
}