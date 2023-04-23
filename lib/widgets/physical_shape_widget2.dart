import 'package:flutter/material.dart';

class PhysicalShapeWidget2 extends StatefulWidget {
  const PhysicalShapeWidget2({Key? key}) : super(key: key);

  @override
  _PhysicalShapeWidget2State createState() => _PhysicalShapeWidget2State();
}

class _PhysicalShapeWidget2State extends State<PhysicalShapeWidget2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PhysicalShape(
        elevation: 5.0,
        color: Colors.orangeAccent,
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        child: const SizedBox(
          height: 250,
          width: 250,
          child: Center(
            child: Icon(
              Icons.flutter_dash,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
