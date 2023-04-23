import 'package:flutter/material.dart';

class SliverPaddinWidget extends StatefulWidget {
  const SliverPaddinWidget({Key? key}) : super(key: key);

  @override
  _SliverPaddinWidgetState createState() => _SliverPaddinWidgetState();
}

class _SliverPaddinWidgetState extends State<SliverPaddinWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg/411px-Einstein_1921_by_F_Schmutzer_-_restoration.jpg')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
