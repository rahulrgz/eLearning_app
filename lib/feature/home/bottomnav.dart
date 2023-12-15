import 'package:flutter/material.dart';
import 'package:hypnohand_app/core/theme/palette.dart';
import 'package:hypnohand_app/feature/enrolledcourse/enrolledcourses.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../favorite/favoritescreen.dart';
import '../profile/profilescreen.dart';
import 'homescreen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> _screens;
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens = [
      HomeScreen(),
      FavoriteScreen(),
      EnrolledCourses(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        mouseCursor: MouseCursor.uncontrolled,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Palette.primaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
      ),
    );
  }
}
