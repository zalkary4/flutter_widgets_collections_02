import 'package:flutter/material.dart';

class ShaderMaskWidget extends StatefulWidget {
  const ShaderMaskWidget({Key? key}) : super(key: key);

  @override
  _ShaderMaskWidgetState createState() => _ShaderMaskWidgetState();
}

class _ShaderMaskWidgetState extends State<ShaderMaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return const RadialGradient(
              center: Alignment.topRight,
              radius: 4.0,
              colors: [
                Colors.orangeAccent,
                Colors.redAccent,
              ],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: const Text(
            'This is a cool looking TEXT',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
