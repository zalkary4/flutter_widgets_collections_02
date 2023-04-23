import 'package:flutter/material.dart';

class PageViewW extends StatefulWidget {
  const PageViewW({Key? key}) : super(key: key);

  @override
  _PageViewWState createState() => _PageViewWState();
}

class _PageViewWState extends State<PageViewW> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.orangeAccent,
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        Container(
          color: Colors.red,
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(fontSize: 100),
            ),
          ),
        ),
        Container(
          color: Colors.blueAccent,
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
