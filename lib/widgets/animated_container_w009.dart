import 'package:flutter/material.dart';

class AnimatedContainerW009 extends StatefulWidget {
  const AnimatedContainerW009({Key? key}) : super(key: key);

  @override
  _AnimatedContainerW009State createState() => _AnimatedContainerW009State();
}

class _AnimatedContainerW009State extends State<AnimatedContainerW009> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 300.0 : 200.0,
          height: selected ? 300.0 : 400.0,
          color: selected ? Colors.blueGrey : Colors.white,
          alignment:
              selected ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: const FlutterLogo(
            size: 75,
          ),
        ),
      ),
    );
  }
}
