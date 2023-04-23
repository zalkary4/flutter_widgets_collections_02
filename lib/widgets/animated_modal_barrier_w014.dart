// import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedModalBarrierW014 extends StatefulWidget {
  const AnimatedModalBarrierW014({Key? key}) : super(key: key);

  @override
  _AnimatedModalBarrierW014State createState() =>
      _AnimatedModalBarrierW014State();
}

class _AnimatedModalBarrierW014State extends State<AnimatedModalBarrierW014>
    with SingleTickerProviderStateMixin {
  bool _isPressed = false;
  late Widget _animatedModalBarrier;
  late AnimationController _animationConntroller;
  late Animation<Color?> _colorAnimation;
  @override
  void initState() {
    ColorTween colorTween = ColorTween(
      begin: Colors.orangeAccent.withOpacity(0.5),
      end: Colors.blueGrey.withOpacity(0.5),
    );
    _animationConntroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _colorAnimation = colorTween.animate(_animationConntroller);

    _animatedModalBarrier = AnimatedModalBarrier(
      color: _colorAnimation,
      dismissible: true,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 250,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orangeAccent,
                    ),
                    child: const Text('Press'),
                    onPressed: () {
                      setState(() {
                        _isPressed = true;
                      });
                      _animationConntroller.reset();
                      _animationConntroller.forward();
                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          _isPressed = false;
                        });
                      });
                    },
                  ),
                  if (_isPressed) _animatedModalBarrier,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
