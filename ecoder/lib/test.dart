
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';



class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({super.key});

  @override
  State<WelcomePageWidget> createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget>
    with TickerProviderStateMixin {
  

  @override
  void initState() {
    super.initState();
   
  }

  @override
  void dispose() {
   

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
      child: Scaffold(
        
        backgroundColor: Color.fromARGB(255, 73, 70, 70),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                height: 372,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 87, 85, 85),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMGQ1ZGZmNTAtM2MyYi00NmZhLTkwYmYtNTNlZDRhMzU2ZTgwXkEyXkFqcGdeQW1yb3NzZXI@._V1_.jpg',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(31),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: const Color(0xFF000000),
                    width: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 40, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SelectionArea(
                        child: Text(
                      'Winter \nVacation Trips',
                      style: TextStyle(
                            fontFamily: 'Merriweather',
                            fontSize: 30,
                            letterSpacing: 0,
                            fontWeight: FontWeight.bold,
                          ),
                    )),
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Enjoy your winter vacations with warmth\nand amazing sightseeing on the mountains.\nEnjoy the best experience with us!',
                        style:TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                            ),
                      ))
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Container(
                        width: 181,
                        height: 50,
                        constraints: BoxConstraints(
                          maxHeight: 32,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF6A62B7),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x32171717),
                              offset: Offset(
                                0.0,
                                2,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        
      
      child: ElevatedButton(
        onPressed: () {
          print('Button pressed ...');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
          backgroundColor: Colors.blue,
          textStyle: const TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Colors.white,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
          ),
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Button'),
            SizedBox(width: 10),
            Icon(
              Icons.grade_rounded,
              size: 15,
            ),
          ],
        ),
      ),
                      ),
                    ),
                        
                      
                     Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Container(
                        width: 181,
                        height: 50,
                        constraints: BoxConstraints(
                          maxHeight: 32,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF6A62B7),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x32171717),
                              offset: Offset(
                                0.0,
                                2,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'Let’s Go!',
                                  style: TextStyle(
                                  fontFamily: 'Merriweather',
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ),
                       
                    ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}