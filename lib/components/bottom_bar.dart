// import 'dart:ui';

// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final int index;
  final Function(int?) onTap;
  const MyBottomBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      selectedItemColor: const Color(0xff2f2626),
      unselectedItemColor: Colors.grey[300],
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              // color: Color(0xff4c3c3c),
              // size: 30,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              // size: 30,
              // color: Color(0xff4c3c3c),
            ),
            label: 'Favorite'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_outlined,
              // size: 30,
              // color: Color(0xff4c3c3c),
            ),
            label: 'Notification'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              // size: 30,
              // color: Color(0xff4c3c3c),
            ),
            label: 'profile'),
      ],
    );
  }
}
