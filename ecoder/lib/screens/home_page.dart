
import 'package:ecoder/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:ecoder/widgets/image_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaler/scaler.dart';

import '../widgets/navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

        title: const Text('Ecoder',
        
        style: TextStyle(
           //fontStyle: GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.bold),
          color: Color.fromRGBO(241, 250, 238, 1)
        ),
        ),
        actions: const [
          Icon(Icons.person_off_outlined),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16.0),
                  Stack(
                    
                    alignment: Alignment.center,
                    children: [
                      Container(
                         // ignore: sort_child_properties_last
                         child:  ImageSlider(),
                        
                         height: Scaler.height(0.29, context),
                         width: Scaler.width(0.90, context),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF212121),
                              Color(0xFF121212),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        
                       
                      ),
                      //ImageSlider(height: 100, width: 100,),
                      //Image.network('https://wearebrain.com/wp-content/uploads/2023/01/Frontend-trends-for-2023.png'),
                   
                    ],
                  ),
                  //const SizedBox(height: 16.0),
                  
                  //const SizedBox(height: 16.0),
                 
                 
                    
                   
                       const Expanded(
                        child:  CardVideo(),
                         ),
                      
                      
              
               const Expanded(child: MyNavigationBar(),)
              
                  
                ],
              ),
             
            
          
        ),
        
        ),
         
      ),
     
       
    );
  }

    
  
}