import 'package:flutter/material.dart';

class TextWidget01 extends StatefulWidget {
  const TextWidget01({Key? key}) : super(key: key);

  @override
  _TextWidget01State createState() => _TextWidget01State();
}

class _TextWidget01State extends State<TextWidget01> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          'This is a text which is pretty long',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            wordSpacing: 2,
            letterSpacing: 2,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
