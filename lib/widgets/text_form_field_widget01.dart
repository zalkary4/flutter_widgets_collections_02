import 'package:flutter/material.dart';

class TextFormFieldWidget01 extends StatefulWidget {
  const TextFormFieldWidget01({Key? key}) : super(key: key);

  @override
  _TextFormFieldWidget01State createState() => _TextFormFieldWidget01State();
}

class _TextFormFieldWidget01State extends State<TextFormFieldWidget01> {
  List<String> titles = [
    '',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          setState(
            () {
              Form.of(primaryFocus!.context!).save();
            },
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            3,
            (int index) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      onSaved: (String? value) {
                        if (value != null) {
                          titles[index] = value;
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(titles[index]),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
