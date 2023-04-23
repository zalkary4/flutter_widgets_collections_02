import 'package:flutter/material.dart';

class SliverToBoxAdaptedWidget extends StatefulWidget {
  const SliverToBoxAdaptedWidget({Key? key}) : super(key: key);

  @override
  _SliverToBoxAdaptedWidgetState createState() =>
      _SliverToBoxAdaptedWidgetState();
}

class _SliverToBoxAdaptedWidgetState extends State<SliverToBoxAdaptedWidget> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
            child: Text('Sliver to box adapted'),
          ),
        ),
      ],
    );
  }
}
