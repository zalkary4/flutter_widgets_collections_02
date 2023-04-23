import 'package:flutter/material.dart';

class BaseLineWidget033 extends StatefulWidget {
  const BaseLineWidget033({Key? key}) : super(key: key);

  @override
  _BaseLineWidget033State createState() => _BaseLineWidget033State();
}

class _BaseLineWidget033State extends State<BaseLineWidget033> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orangeAccent,
        child: const Baseline(
          baseline: 50,
          baselineType: TextBaseline.alphabetic,
          child: FlutterLogo(
            size: 50,
          ),
        ),
      ),
    );
  }
}
