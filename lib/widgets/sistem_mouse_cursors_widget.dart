import 'package:flutter/material.dart';

class SistemMouseCursorsWidget extends StatefulWidget {
  const SistemMouseCursorsWidget({Key? key}) : super(key: key);

  @override
  _SistemMouseCursorsWidgetState createState() =>
      _SistemMouseCursorsWidgetState();
}

class _SistemMouseCursorsWidgetState extends State<SistemMouseCursorsWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.cell,
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}
