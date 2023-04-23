import 'package:flutter/material.dart';

class PositionedTransitionWidget1 extends StatefulWidget {
  const PositionedTransitionWidget1({Key? key}) : super(key: key);

  @override
  _PositionedTransitionWidget1State createState() =>
      _PositionedTransitionWidget1State();
}

class _PositionedTransitionWidget1State
    extends State<PositionedTransitionWidget1>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double smallLogo = 100;
    double bigLogo = 200;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        Size biggest = constraints.biggest;
        return Stack(
          children: [
            PositionedTransition(
              rect: RelativeRectTween(
                begin: RelativeRect.fromSize(
                    Rect.fromLTWH(
                      biggest.width / 2 - smallLogo / 2,
                      0,
                      smallLogo,
                      smallLogo,
                    ),
                    biggest),
                end: RelativeRect.fromSize(
                    Rect.fromLTWH(
                      biggest.width / 2 - bigLogo / 2,
                      biggest.height - bigLogo,
                      bigLogo,
                      bigLogo,
                    ),
                    biggest),
              ).animate(
                CurvedAnimation(parent: _controller, curve: Curves.slowMiddle),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
