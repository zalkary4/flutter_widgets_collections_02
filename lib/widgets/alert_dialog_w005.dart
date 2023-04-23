import 'package:flutter/material.dart';

class AlertDialogW extends StatefulWidget {
  const AlertDialogW({Key? key}) : super(key: key);

  @override
  _AlertDialogWState createState() => _AlertDialogWState();
}

class _AlertDialogWState extends State<AlertDialogW> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop;
                  },
                  child: const Text('Close'),
                ),
              ],
              title: const Text('Flutter'),
              contentPadding: const EdgeInsets.all(20),
              content: const Text('This is the Alert Dilaog'),
            ),
          );
        },
        child: const Text(
          'Show Alert Dialog',
        ),
      ),
    );
  }
}
