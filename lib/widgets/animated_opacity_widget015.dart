import 'package:flutter/material.dart';

class AnimatedOpacityWidget015 extends StatefulWidget {
  const AnimatedOpacityWidget015({Key? key}) : super(key: key);

  @override
  _AnimatedOpacityWidget015State createState() =>
      _AnimatedOpacityWidget015State();
}

class _AnimatedOpacityWidget015State extends State<AnimatedOpacityWidget015> {
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 2),
            child: const FlutterLogo(
              size: 100,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
              });
            },
            child: const Text('Fade Logo'),
          ),
        ],
      ),
    );
  }
}
