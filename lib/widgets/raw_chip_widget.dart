import 'package:flutter/material.dart';

class RawChipWidget extends StatelessWidget {
  const RawChipWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RawChip(
        label: const Text(
          'RawChip',
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFF42A5F5),
          ),
        ),
        avatar: const Icon(Icons.person),
        deleteIcon: const Icon(Icons.remove_circle),
        onPressed: () {},
        onDeleted: () {},
      ),
    );
  }
}
