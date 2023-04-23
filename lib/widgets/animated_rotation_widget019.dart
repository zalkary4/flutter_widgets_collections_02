import 'package:flutter/material.dart';

class AnimatedRotationWidget019 extends StatefulWidget {
  const AnimatedRotationWidget019({Key? key}) : super(key: key);

  @override
  _AnimatedRotationWidget019State createState() =>
      _AnimatedRotationWidget019State();
}

class _AnimatedRotationWidget019State extends State<AnimatedRotationWidget019> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(milliseconds: 500),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(
                () {
                  turns += 1 / 4;
                },
              );
            },
            child: const Text('Rotate Logo'),
          )
        ],
      ),
    );
  }
}
