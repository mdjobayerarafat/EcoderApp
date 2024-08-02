// ignore_for_file: unnecessary_null_comparison

import 'package:ecoder/widgets/subcategory_card.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';


class SubcategoryPage extends StatefulWidget {
  const SubcategoryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SubcategoryPageState createState() => _SubcategoryPageState();
}

class _SubcategoryPageState extends State<SubcategoryPage> {
   
  

  @override
  void initState() {
    super.initState();
  
    
  }

  
 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
         shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20), // Change this value to your desired radius
        bottomRight: Radius.circular(20), // Change this value to your desired radius
      ),
    ),
       backgroundColor: Color.fromRGBO(230, 57, 70,1), // RGB color (0, 0, 255) with opacity 1

      title: const Text('Subcategory'),
    ),
    body: const SubcategoryCard(),
     //bottomNavigationBar: const MyNavigationBar()
      );
}
}