import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/widgets/bottom_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/gif/splash.gif',
        width: 800,
        height: 600,
      ),
      backgroundColor: Colors.black,
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: const Text(
        "Loading...",
        style: TextStyle(color: Colors.white),
      ),
      navigator: const BottomNavBar(),
      durationInSeconds: 10,
    );
  }
}
