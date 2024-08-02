import 'package:ecoder/widgets/category_card.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';



class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
 
   

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
       backgroundColor: const Color.fromRGBO(230, 57, 70,1), // RGB color (0, 0, 255) with opacity 1

      title: const Text('Category'),
    ),
    body: const CategoryCard(),
    // bottomNavigationBar: MyNavigationBar()
  );
}
}