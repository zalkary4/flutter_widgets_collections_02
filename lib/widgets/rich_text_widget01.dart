import 'package:flutter/material.dart';

class RichTextWidget01 extends StatefulWidget {
  const RichTextWidget01({Key? key}) : super(key: key);

  @override
  _RichTextWidget01State createState() => _RichTextWidget01State();
}

class _RichTextWidget01State extends State<RichTextWidget01> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: const TextSpan(
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 30,
          ),
          children: [
            TextSpan(text: 'To the'),
            TextSpan(
              text: 'moon',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            TextSpan(text: 'and beyond')
          ],
        ),
      ),
    );
  }
}
