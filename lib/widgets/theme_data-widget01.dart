import 'package:flutter/material.dart';

class ThemeDataWidget01 extends StatelessWidget {
  const ThemeDataWidget01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.green,
        primaryColor: Colors.orangeAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.redAccent,
        primaryColor: Colors.orangeAccent,
      ),
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Theme.of(context).primaryColor,
          child: const Text('Text'),
        ),
      ),
    );
  }
}
