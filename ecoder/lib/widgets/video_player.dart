import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerScreen extends StatefulWidget {
 final String videoUrl;

const VideoPlayerScreen({super.key, required this.videoUrl,});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;

 @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId:widget.videoUrl ,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        //showVideoProgressIndicator: true,
     ),
    );
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

        title: const Text('Video Player'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: _controller,
          onReady: () {
            _controller.play();
          },
        ),
      ),
    );
  }
}