import 'dart:async';

import 'package:ecoder/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadSplash();
  }

// Load the splash screen for some duration
  Future<Timer> loadSplash() async {
    return Timer(
      const Duration(seconds: 3),
      onDoneLoading,
    );
  }

  onDoneLoading() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: ((context) => const HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        "assets/loti.json",
        // Can add other properties on how you would like the anim to display
        fit: BoxFit.cover,
        width: 300,
        height: 300,
      ),
    );
  }
}