import 'package:flutter/material.dart';

class SingleChildScrollViewWidgetsss extends StatefulWidget {
  const SingleChildScrollViewWidgetsss({Key? key}) : super(key: key);

  @override
  _SingleChildScrollViewWidgetsssState createState() =>
      _SingleChildScrollViewWidgetsssState();
}

class _SingleChildScrollViewWidgetsssState
    extends State<SingleChildScrollViewWidgetsss> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(
          50,
          (index) => ListTile(
            title: Text('Item ${index + 1}'),
          ),
        ),
      ),
    );
  }
}
