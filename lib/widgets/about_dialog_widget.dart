import 'package:flutter/material.dart';

class AboutDialogWidget extends StatefulWidget {
  const AboutDialogWidget({Key? key}) : super(key: key);

  @override
  _AboutDialogWidgetState createState() => _AboutDialogWidgetState();
}

class _AboutDialogWidgetState extends State<AboutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show about dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AboutDialog(
              applicationIcon: FlutterLogo(),
              applicationLegalese: 'legalese',
              applicationName: 'Flutter Logoooo',
              applicationVersion: 'Version 1.0.0',
              children: [Text('This is a text created by Zalkar')],
            ),
          );
        },
      ),
    );
  }
}
