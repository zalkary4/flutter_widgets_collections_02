import 'package:flutter/material.dart';

class SizeTransitionwidget extends StatefulWidget {
  const SizeTransitionwidget({Key? key}) : super(key: key);

  @override
  _SizeTransitionwidgetState createState() => _SizeTransitionwidgetState();
}

class _SizeTransitionwidgetState extends State<SizeTransitionwidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInSine,
  );
  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      axisAlignment: -1,
      child: const Center(
        child: FlutterLogo(size: 300),
      ),
    );
  }
}
