import 'package:flutter/material.dart';

class SafeAreaWidget01 extends StatefulWidget {
  const SafeAreaWidget01({Key? key}) : super(key: key);

  @override
  _SafeAreaWidget01State createState() => _SafeAreaWidget01State();
}

class _SafeAreaWidget01State extends State<SafeAreaWidget01> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Flutter Mapp',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
