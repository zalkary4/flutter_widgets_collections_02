import 'package:flutter/material.dart';

class AnimatedPaddinWidget016 extends StatefulWidget {
  const AnimatedPaddinWidget016({Key? key}) : super(key: key);

  @override
  _AnimatedPaddinWidget016State createState() =>
      _AnimatedPaddinWidget016State();
}

class _AnimatedPaddinWidget016State extends State<AnimatedPaddinWidget016> {
  double padValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent,
          ),
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
            });
          },
          child: const Text('Change padding!!!'),
        ),
        Text('Padding =$padValue'),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            // height: MediaQuery.of(context).size.height,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
