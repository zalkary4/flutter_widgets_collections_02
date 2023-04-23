import 'package:flutter/material.dart';

class AnimatedPhysicalModal017 extends StatefulWidget {
  const AnimatedPhysicalModal017({Key? key}) : super(key: key);

  @override
  _AnimatedPhysicalModal017State createState() =>
      _AnimatedPhysicalModal017State();
}

class _AnimatedPhysicalModal017State extends State<AnimatedPhysicalModal017> {
  bool _isFlat = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            curve: Curves.fastOutSlowIn,
            shape: BoxShape.rectangle,
            elevation: _isFlat ? 0 : 6.0,
            color: Colors.white,
            shadowColor: Colors.black,
            duration: const Duration(milliseconds: 500),
            child: const SizedBox(
              height: 120,
              width: 120,
              child: Icon(Icons.android_outlined),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _isFlat = !_isFlat;
              });
            },
            child: const Text('Click'),
          ),
        ],
      ),
    );
  }
}
