import 'package:flutter/material.dart';

AppBar appBarForAllWidgets() {
  return AppBar(
    title: const Text('Flutter Mapp'),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notifications,
        ),
      ),
    ],
    backgroundColor: Colors.orangeAccent,
    leading: IconButton(
      onPressed: () {},
      icon: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
    ),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    ),
  );
}
