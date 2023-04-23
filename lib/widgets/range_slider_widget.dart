import 'package:flutter/material.dart';

class RangeSliderWidget01 extends StatefulWidget {
  const RangeSliderWidget01({Key? key}) : super(key: key);

  @override
  _RangeSliderWidgetState createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget01> {
  RangeValues values = const RangeValues(0.0, 0.5);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Center(
      child: RangeSlider(
        values: values,
        divisions: 20,
        labels: labels,
        onChanged: (newValues) {
          setState(() {
            values = newValues;
          });
        },
      ),
    );
  }
}
