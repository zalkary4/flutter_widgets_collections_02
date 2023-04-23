import 'package:flutter/material.dart';

class PageViewWidget1 extends StatefulWidget {
  const PageViewWidget1({Key? key}) : super(key: key);

  @override
  _PageViewWidget1State createState() => _PageViewWidget1State();
}

class _PageViewWidget1State extends State<PageViewWidget1> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.red,
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(fontSize: 120),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              '3',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
      ],
    );
  }
}
