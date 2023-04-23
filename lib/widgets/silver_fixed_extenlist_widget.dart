import 'package:flutter/material.dart';

class SilverFixedExtenlistWidget extends StatefulWidget {
  const SilverFixedExtenlistWidget({Key? key}) : super(key: key);

  @override
  _SilverFixedExtenlistWidgetState createState() =>
      _SilverFixedExtenlistWidgetState();
}

class _SilverFixedExtenlistWidgetState
    extends State<SilverFixedExtenlistWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: index.isEven ? Colors.blue : Colors.white70,
                child: Text('Itme ${index + 1}'),
              );
            },
            childCount: 40,
          ),
          itemExtent: 60,
        )
      ],
    );
  }
}
