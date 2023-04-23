import 'package:flutter/material.dart';

class AnimatedCrossFadeW010 extends StatefulWidget {
  const AnimatedCrossFadeW010({Key? key}) : super(key: key);

  @override
  _AnimatedCrossFadeW010State createState() => _AnimatedCrossFadeW010State();
}

class _AnimatedCrossFadeW010State extends State<AnimatedCrossFadeW010> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
          height: 100,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          },
          child: const Text(
            'Switch',
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/3/3e/Einstein_1921_by_F_Schmutzer_-_restoration.jpg',
            width: double.infinity,
          ),
          secondChild: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiSDQO7DV_LdhPV6G9JXY_n9ubNtkqObF7AEMnkXFwDbc9j1GkBu1N7SDY86qKy0MoY8s&usqp=CAU',
            width: double.infinity,
          ),
          crossFadeState:
              _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        )
      ],
    );
  }
}
