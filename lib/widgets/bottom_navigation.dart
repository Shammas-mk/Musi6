import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/views/home_screen.dart';
import 'package:musicapp/views/playlist_screen.dart';
import 'package:musicapp/views/premium_screen.dart';
import 'package:musicapp/views/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      resizeToAvoidBottomInset: false,
      color: Colors.green,
      selectedIconColor: Colors.white,
      unselectedIconColor: Colors.white.withOpacity(0.6),
      items: [
        FloatingNavBarItem(
            iconData: Icons.home_outlined,
            page: const HomeScreen(),
            title: 'Home'),
        FloatingNavBarItem(
            iconData: Icons.music_note_outlined,
            page: const PlaylistScreen(),
            title: 'For You'),
        FloatingNavBarItem(
            iconData: Icons.workspace_premium_outlined,
            page: const PremiumScreen(),
            title: 'Premium'),
        FloatingNavBarItem(
            iconData: Icons.person_outline,
            page: const ProfileScreen(),
            title: 'Profile'),
      ],
      horizontalPadding: 10.0,
      hapticFeedback: true,
      showTitle: true,
    );
  }
}
