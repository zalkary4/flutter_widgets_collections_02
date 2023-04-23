import 'package:flutter/material.dart';

class SizedBoxWidget01 extends StatefulWidget {
  const SizedBoxWidget01({Key? key}) : super(key: key);

  @override
  _SizedBoxWidget01State createState() => _SizedBoxWidget01State();
}

class _SizedBoxWidget01State extends State<SizedBoxWidget01> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Card(
          color: Colors.yellow,
          child: Center(
            child: Text(
              'Flutter Mapp',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
