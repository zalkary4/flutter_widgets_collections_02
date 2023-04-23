import 'package:flutter/material.dart';

class TextSpanWidget01 extends StatefulWidget {
  const TextSpanWidget01({Key? key}) : super(key: key);

  @override
  _TextSpanWidget01State createState() => _TextSpanWidget01State();
}

class _TextSpanWidget01State extends State<TextSpanWidget01> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text.rich(
        TextSpan(
          style: TextStyle(
            fontSize: 30,
            color: Colors.redAccent,
          ),
          text: 'Flutter ',
          children: [
            TextSpan(
              text: 'to the moon',
              style: TextStyle(
                fontWeight: FontWeight.w100,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
