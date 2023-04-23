import 'package:flutter/material.dart';

class AnimatedSizeWidget021 extends StatefulWidget {
  const AnimatedSizeWidget021({Key? key}) : super(key: key);

  @override
  _AnimatedSizeWidget021State createState() => _AnimatedSizeWidget021State();
}

class _AnimatedSizeWidget021State extends State<AnimatedSizeWidget021> {
  double _size = 200;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            _size = _size == 300 ? 150 : 300;
          },
        );
      },
      child: Container(
        color: Colors.white,
        child: AnimatedSize(
          curve: Curves.linear,
          duration: const Duration(milliseconds: 200),
          child: FlutterLogo(
            size: _size,
          ),
        ),
      ),
    );
  }
}
