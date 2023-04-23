import 'package:flutter/material.dart';

class SpacerWidhet01 extends StatefulWidget {
  const SpacerWidhet01({Key? key}) : super(key: key);

  @override
  _SpacerWidhet01State createState() => _SpacerWidhet01State();
}

class _SpacerWidhet01State extends State<SpacerWidhet01> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orangeAccent,
          height: 150,
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          color: Colors.orangeAccent,
          height: 150,
        ),
        const Spacer(
          flex: 2,
        ),
        Container(
          color: Colors.orangeAccent,
          height: 150,
        ),
      ],
    );
  }
}
