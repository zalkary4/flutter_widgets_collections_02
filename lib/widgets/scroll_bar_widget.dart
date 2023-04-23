import 'package:flutter/material.dart';

class ScrollBarWidget11 extends StatefulWidget {
  const ScrollBarWidget11({Key? key}) : super(key: key);

  @override
  _ScrollBarWidget11State createState() => _ScrollBarWidget11State();
}

class _ScrollBarWidget11State extends State<ScrollBarWidget11> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      child: ListView.builder(
        controller: controller,
        itemCount: 70,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${index + 2}'),
          );
        },
      ),
    );
  }
}
