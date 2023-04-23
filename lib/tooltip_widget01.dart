import 'package:flutter/material.dart';

class TooltipWidget01 extends StatefulWidget {
  const TooltipWidget01({Key? key}) : super(key: key);

  @override
  _TooltipWidget01State createState() => _TooltipWidget01State();
}

class _TooltipWidget01State extends State<TooltipWidget01> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Tooltip(
        message: 'This is an image',
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1j3HiuPjoa2dgBagUDTrjta7T6dDINsNMGA&usqp=CAU',
        ),
      ),
    );
  }
}
