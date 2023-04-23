import 'package:flutter/material.dart';

class AnimatedIconWidget012 extends StatefulWidget {
  const AnimatedIconWidget012({Key? key}) : super(key: key);

  @override
  _AnimatedIconWidget012State createState() => _AnimatedIconWidget012State();
}

class _AnimatedIconWidget012State extends State<AnimatedIconWidget012>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (_isPlay == false) {
            _controller.forward;
            _isPlay = true;
          } else {
            _controller.reverse();
            _isPlay = false;
          }
        },
        child: AnimatedIcon(
          icon: AnimatedIcons.play_pause,
          progress: _controller,
          size: 100,
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class AnimationIconWidget001 extends StatefulWidget {
//   const AnimationIconWidget001({Key? key}) : super(key: key);

//   @override
//   State<AnimationIconWidget001> createState() => _AnimationIconWidget001State();
// }

// class _AnimationIconWidget001State extends State<AnimationIconWidget001>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;

//   @override
//   void initState() {
//     super.initState();
//     _animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));
//   }

//   bool currentPlaying = false;

//   void _iconTapped() {
//     if (currentPlaying == false) {
//       currentPlaying = true;
//       _animationController.forward();
//     } else {
//       currentPlaying = false;
//       _animationController.reverse();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: GestureDetector(
//         onTap: _iconTapped,
//         child: AnimatedIcon(
//           progress: _animationController,
//           icon: AnimatedIcons.play_pause,
//           size: 150,
//           color: Colors.red,
//         ),
//       ),
//     ));
//   }
// }
