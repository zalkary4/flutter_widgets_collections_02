import 'package:flutter/material.dart';

class TextFieldWidget01 extends StatefulWidget {
  const TextFieldWidget01({Key? key}) : super(key: key);

  @override
  _TextFieldWidget01State createState() => _TextFieldWidget01State();
}

class _TextFieldWidget01State extends State<TextFieldWidget01> {
  late TextEditingController controller;
  String text = '';
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: controller,
              onSubmitted: (String value) {
                setState(
                  () {
                    text = controller.text;
                  },
                );
              },
            ),
            const SizedBox(height: 40),
            Text(text),
          ],
        ),
      ),
    );
  }
}
