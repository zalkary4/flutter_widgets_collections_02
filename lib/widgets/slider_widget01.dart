import 'package:flutter/material.dart';

class SliderWidget01 extends StatefulWidget {
  const SliderWidget01({Key? key}) : super(key: key);

  @override
  _SliderWidget01State createState() => _SliderWidget01State();
}

class _SliderWidget01State extends State<SliderWidget01> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _currentSliderValue,
      max: 100,
      divisions: 100,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(
          () {
            _currentSliderValue = value;
          },
        );
      },
    );
  }
}
