import 'package:flutter/material.dart';

class TextButtonGradWidget extends StatefulWidget {
  const TextButtonGradWidget({Key? key}) : super(key: key);

  @override
  _TextButtonGradWidgetState createState() => _TextButtonGradWidgetState();
}

class _TextButtonGradWidgetState extends State<TextButtonGradWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: null,
            style:
                TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Disable'),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            style:
                TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
            child: const Text('Disable'),
          ),
          const SizedBox(height: 30),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff0d47a21),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(15),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Gradient'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
