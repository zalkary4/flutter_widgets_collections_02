import 'package:flutter/material.dart';

class RawAutoCompleteWidget extends StatelessWidget {
  const RawAutoCompleteWidget({Key? key}) : super(key: key);
  static const List<String> theList = <String>[
    'venusaur',
    'blastoise',
    'charizard',
  ];

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete(
      optionsBuilder: (TextEditingValue textEditionValue) {
        return theList.where((String item) {
          return item.contains(textEditionValue.text.toLowerCase());
        });
      },
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController textEditingController,
        FocusNode focuseNode,
        VoidCallback onFieldSubmitted,
      ) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            controller: textEditingController,
            focusNode: focuseNode,
            onFieldSubmitted: (String value) {
              onFieldSubmitted();
            },
          ),
        );
      },
      optionsViewBuilder: (
        BuildContext context,
        AutocompleteOnSelected<String> onSelected,
        Iterable<String> options,
      ) {
        return Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 4.0,
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  itemBuilder: (
                    BuildContext context,
                    int index,
                  ) {
                    String option = options.elementAt(index);
                    return GestureDetector(
                      onTap: () {
                        onSelected(option);
                      },
                      child: ListTile(
                        title: Text(option),
                      ),
                    );
                  },
                  padding: const EdgeInsets.all(10.0),
                  itemCount: options.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
