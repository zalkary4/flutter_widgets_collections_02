import 'package:flutter/material.dart';

class RatadetBoxWidget01 extends StatefulWidget {
  const RatadetBoxWidget01({Key? key}) : super(key: key);

  @override
  _RatadetBoxWidget01State createState() => _RatadetBoxWidget01State();
}

class _RatadetBoxWidget01State extends State<RatadetBoxWidget01> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: RotatedBox(
        quarterTurns: 3,
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
