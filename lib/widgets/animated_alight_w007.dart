import 'package:flutter/material.dart';

class AnimatedAlightW007 extends StatefulWidget {
  const AnimatedAlightW007({Key? key}) : super(key: key);

  @override
  _AnimatedAlightW007State createState() => _AnimatedAlightW007State();
}

class _AnimatedAlightW007State extends State<AnimatedAlightW007> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          width: double.infinity,
          height: 250,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50),
          ),
        ),
      ),
    );
  }
}
