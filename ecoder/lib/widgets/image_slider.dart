import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scaler/scaler.dart';



class ImageSlider extends StatefulWidget {
   const ImageSlider({super.key,});

  @override
  // ignore: library_private_types_in_public_api
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _current = 0;
  final List<String> imgList = [
    'https://wearebrain.com/wp-content/uploads/2023/01/Frontend-trends-for-2023.png',
    'https://wearebrain.com/wp-content/uploads/2023/01/Frontend-trends-for-2023.png',
    'https://wearebrain.com/wp-content/uploads/2023/01/Frontend-trends-for-2023.png',
  ];
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        height: Scaler.height(0.30, context),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              items: imgList
                  .map((item) => Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                     height: Scaler.height(0.30, context),
                             
                    ),
                  ))
                  .toList(),
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? const Color.fromRGBO(0, 0, 0, 0.9)
                        : const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
            
          ],
        ),
      ),
    );
  }
}
