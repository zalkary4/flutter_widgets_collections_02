import 'package:flutter/material.dart';

class PopUpMenuWidget01 extends StatefulWidget {
  const PopUpMenuWidget01({Key? key}) : super(key: key);

  @override
  _PopUpMenuWidget01State createState() => _PopUpMenuWidget01State();
}

class _PopUpMenuWidget01State extends State<PopUpMenuWidget01> {
  String title = 'First item';
  String item1 = 'Firts item';
  String item2 = 'Second item';
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: item1,
            child: Text(item1),
          ),
          PopupMenuItem(
            value: item2,
            child: Text(item2),
          ),
        ],
        onSelected: (String newValue) {
          setState(() {
            title = newValue;
          });
        },
      ),
    );
  }
}
