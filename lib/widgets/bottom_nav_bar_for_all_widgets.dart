import 'package:flutter/material.dart';

BottomNavigationBar bottomNavBarForAllWidgets() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
    onTap: (int index) {},
    selectedItemColor: Colors.orangeAccent,
  );
}
