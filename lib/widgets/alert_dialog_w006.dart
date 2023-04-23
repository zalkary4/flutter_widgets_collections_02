import 'package:flutter/material.dart';

class AlertDialogW006 extends StatefulWidget {
  const AlertDialogW006({Key? key}) : super(key: key);

  @override
  _AlertDialogW006State createState() => _AlertDialogW006State();
}

class _AlertDialogW006State extends State<AlertDialogW006> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 120.0,
        width: double.infinity,
        color: Colors.blueGrey,
        child: const Align(
          alignment: Alignment.center,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
