import 'package:flutter/material.dart';

class SwithchedWidget01 extends StatefulWidget {
  const SwithchedWidget01({Key? key}) : super(key: key);

  @override
  _SwithchedWidget01State createState() => _SwithchedWidget01State();
}

class _SwithchedWidget01State extends State<SwithchedWidget01> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Switch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}
