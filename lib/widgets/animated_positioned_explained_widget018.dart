import 'package:flutter/material.dart';

class AnimatedPositionedExplainedWidget018 extends StatefulWidget {
  const AnimatedPositionedExplainedWidget018({Key? key}) : super(key: key);

  @override
  _AnimatedPositionedExplainedWidget018State createState() =>
      _AnimatedPositionedExplainedWidget018State();
}

class _AnimatedPositionedExplainedWidget018State
    extends State<AnimatedPositionedExplainedWidget018> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 350,
      child: Stack(
        children: [
          AnimatedPositioned(
            width: selected ? 200 : 50,
            height: selected ? 50 : 200,
            top: selected ? 50 : 150,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onTap: () {
                setState(
                  () {
                    selected = !selected;
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
