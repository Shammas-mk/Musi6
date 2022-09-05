import 'package:floating_navbar/floating_navbar.dart';
import 'package:floating_navbar/floating_navbar_item.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/views/home_screen.dart';
import 'package:musicapp/views/playlist_screen.dart';
import 'package:musicapp/views/premium_screen.dart';
import 'package:musicapp/views/search_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingNavBar(
      resizeToAvoidBottomInset: true,
      color: Colors.green,
      selectedIconColor: Colors.white,
      unselectedIconColor: Colors.white.withOpacity(0.6),
      items: [
        FloatingNavBarItem(
            iconData: Icons.home_outlined,
            page: const HomeScreen(),
            title: 'Home'),
        FloatingNavBarItem(
            iconData: Icons.search,
            page: const SearchScreen(),
            title: 'Search'),
        FloatingNavBarItem(
            iconData: Icons.music_note_outlined,
            page: const PlaylistScreen(),
            title: 'For You'),
        FloatingNavBarItem(
            iconData: Icons.workspace_premium_outlined,
            page: const PremiumScreen(),
            title: 'Premium'),
      ],
      horizontalPadding: 10.0,
      hapticFeedback: true,
      showTitle: true,
    );
  }
}
