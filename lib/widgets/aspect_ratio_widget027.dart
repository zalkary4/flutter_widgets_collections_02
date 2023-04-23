import 'package:flutter/material.dart';

class AspectRatioWidget027 extends StatefulWidget {
  const AspectRatioWidget027({Key? key}) : super(key: key);

  @override
  _AspectRatioWidget027State createState() => _AspectRatioWidget027State();
}

class _AspectRatioWidget027State extends State<AspectRatioWidget027> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      height: 150,
      // height: 300,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
