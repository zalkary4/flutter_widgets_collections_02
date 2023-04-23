import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedBuilderW008 extends StatefulWidget {
  const AnimatedBuilderW008({Key? key}) : super(key: key);

  @override
  _AnimatedBuilderW008State createState() => _AnimatedBuilderW008State();
}

class _AnimatedBuilderW008State extends State<AnimatedBuilderW008>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        child: const FlutterLogo(size: 200),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
