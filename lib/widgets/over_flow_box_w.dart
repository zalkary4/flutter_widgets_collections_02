import 'package:flutter/material.dart';

class OverFlowBoxWidget extends StatefulWidget {
  const OverFlowBoxWidget({Key? key}) : super(key: key);

  @override
  _OverFlowBoxWidgetState createState() => _OverFlowBoxWidgetState();
}

class _OverFlowBoxWidgetState extends State<OverFlowBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orangeAccent,
        child: OverflowBox(
          maxWidth: 200,
          maxHeight: 200,
          child: Container(
            color: Colors.red.withOpacity(0.5),
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
