import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.asset(
              "assets/images/background.jpg",
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5)),
                  child: const Center(
                    child: Text(
                      'Profile Screen',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
