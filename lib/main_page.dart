import 'package:flutter/material.dart';
import 'widgets/bottom_nav_bar.dart';
import 'screens/home_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/favorite_screen.dart';
import 'screens/profile_setting_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ExploreScreen(),
    const FavoriteScreen(),
    const ProfileSettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
