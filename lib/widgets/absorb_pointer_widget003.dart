import 'package:flutter/material.dart';

class AbsorbPointerWidget003 extends StatefulWidget {
  const AbsorbPointerWidget003({Key? key}) : super(key: key);

  @override
  _AbsorbPointerWidget003State createState() => _AbsorbPointerWidget003State();
}

class _AbsorbPointerWidget003State extends State<AbsorbPointerWidget003> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: () {},
              child: null,
            ),
          ),
          SizedBox(
            width: 110,
            height: 200,
            child: AbsorbPointer(
              child: ElevatedButton(
                onPressed: () {},
                child: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
