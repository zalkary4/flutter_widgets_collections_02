import 'package:flutter/material.dart';

class AboutListTileW extends StatefulWidget {
  const AboutListTileW({Key? key}) : super(key: key);

  @override
  _AboutListTileWState createState() => _AboutListTileWState();
}

class _AboutListTileWState extends State<AboutListTileW> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AboutListTile(
        icon: Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationLegalese: 'Legaleseeee',
        applicationName: 'Flutter Mapp',
        applicationVersion: 'version 1.0.0',
        aboutBoxChildren: [Text('This is text created by Zalkar')],
      ),
    );
  }
}
