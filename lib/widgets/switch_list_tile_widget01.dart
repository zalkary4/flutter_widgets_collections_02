import 'package:flutter/material.dart';

class SwitchListTileWidget01 extends StatefulWidget {
  const SwitchListTileWidget01({Key? key}) : super(key: key);

  @override
  SwitchListTileWidget01State createState() => SwitchListTileWidget01State();
}

class SwitchListTileWidget01State extends State<SwitchListTileWidget01> {
  bool lights = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SwitchListTile(
        title: const Text('Lights'),
        value: lights,
        onChanged: (bool value) {
          setState(() {
            lights = value;
          });
        },
        secondary: const Icon(Icons.lightbulb_outline),
      ),
    );
  }
}
