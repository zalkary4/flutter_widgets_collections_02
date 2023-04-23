import 'package:flutter/material.dart';

class PaddingFlutterWidget extends StatefulWidget {
  const PaddingFlutterWidget({Key? key}) : super(key: key);

  @override
  _PaddingFlutterWidgetState createState() => _PaddingFlutterWidgetState();
}

class _PaddingFlutterWidgetState extends State<PaddingFlutterWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(80),
          // padding: EdgeInsets.zero,
          // padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
          // padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
          child: Text('Flutter Mapp'),
        ),
      ),
    );
  }
}
