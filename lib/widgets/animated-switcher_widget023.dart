import 'package:flutter/material.dart';

class AnimatedSwitcherWidget023 extends StatefulWidget {
  const AnimatedSwitcherWidget023({Key? key}) : super(key: key);

  @override
  _AnimatedSwitcherWidget023State createState() =>
      _AnimatedSwitcherWidget023State();
}

class _AnimatedSwitcherWidget023State extends State<AnimatedSwitcherWidget023> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Text(
              '$_count',
              style: const TextStyle(fontSize: 100),
              key: ValueKey(_count),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _count += 1;
              });
            },
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
