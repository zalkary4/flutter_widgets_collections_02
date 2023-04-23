import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleW011 extends StatefulWidget {
  const AnimatedDefaultTextStyleW011({Key? key}) : super(key: key);

  @override
  _AnimatedDefaultTextStyleW011State createState() =>
      _AnimatedDefaultTextStyleW011State();
}

class _AnimatedDefaultTextStyleW011State
    extends State<AnimatedDefaultTextStyleW011> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 600),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: const Text('Fluttr'),
          ),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 70;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text('Switch'))
      ],
    );
  }
}
