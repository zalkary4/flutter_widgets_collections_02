import 'dart:ui';

import 'package:flutter/material.dart';
// import 'dart:ui';

class BackDropFilterWidget031 extends StatefulWidget {
  const BackDropFilterWidget031({Key? key}) : super(key: key);

  @override
  _BackDropFilterWidget031State createState() =>
      _BackDropFilterWidget031State();
}

class _BackDropFilterWidget031State extends State<BackDropFilterWidget031> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          '0' * 10000,
          style: const TextStyle(color: Colors.green),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
              ),
              child: Container(
                alignment: Alignment.center,
                width: 250,
                height: 250,
                child: const Text('Blur'),
              ),
            ),
          ),
        )
      ],
    );
  }
}
