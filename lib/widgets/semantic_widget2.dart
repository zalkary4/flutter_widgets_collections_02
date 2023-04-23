import 'package:flutter/material.dart';

class SemanticWidget2 extends StatefulWidget {
  const SemanticWidget2({Key? key}) : super(key: key);

  @override
  _SemanticWidget2State createState() => _SemanticWidget2State();
}

class _SemanticWidget2State extends State<SemanticWidget2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: true,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 89, 120),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Mapp'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Semantics(
                  label: 'This is the Flutter Logo',
                  child: const FlutterLogo(size: 220)),
              const FlutterLogo(size: 200)
            ],
          ),
        ),
      ),
    );
  }
}
