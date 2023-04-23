import 'package:flutter/material.dart';

class SizedOverflowWidget extends StatefulWidget {
  const SizedOverflowWidget({Key? key}) : super(key: key);

  @override
  _SizedOverflowWidgetState createState() => _SizedOverflowWidgetState();
}

class _SizedOverflowWidgetState extends State<SizedOverflowWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.orangeAccent,
        child: SizedOverflowBox(
          size: const Size(100, 100),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('This is a button'),
          ),
        ),
      ),
    );
  }
}
