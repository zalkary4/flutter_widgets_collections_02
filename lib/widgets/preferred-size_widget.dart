import 'package:flutter/material.dart';

class PreferredSizeWidget1 extends StatefulWidget {
  const PreferredSizeWidget1({Key? key}) : super(key: key);

  @override
  _PreferredSizeWidgetState createState() => _PreferredSizeWidgetState();
}

class _PreferredSizeWidgetState extends State<PreferredSizeWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Container(
          height: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.redAccent,
                Colors.orangeAccent,
              ],
            ),
          ),
          child: SafeArea(
              child: Center(
            child: ListTile(
              title: const Text('Flutter Mapp'),
              trailing: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 20,
                ),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          )),
        ),
      ),
    );
  }
}
