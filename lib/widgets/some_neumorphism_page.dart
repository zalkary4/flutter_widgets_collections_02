import 'package:flutter/material.dart';

class SomeNeumorphismPage extends StatefulWidget {
  const SomeNeumorphismPage({Key? key}) : super(key: key);

  @override
  _SomeNeumorphismPageState createState() => _SomeNeumorphismPageState();
}

class _SomeNeumorphismPageState extends State<SomeNeumorphismPage>
    with TickerProviderStateMixin {
  double turns = 0.0;
  bool isClicked = false;
  late AnimationController _controller;
  Color customBlackColor = const Color.fromARGB(255, 53, 53, 53);
  Color customWhiteColor = const Color.fromARGB(255, 237, 237, 237);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 800),
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
    return Scaffold(
      backgroundColor: customWhiteColor,
      appBar: AppBar(
        title: Text('FlutterMapp', style: TextStyle(color: customBlackColor)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: AnimatedRotation(
          turns: turns,
          duration: const Duration(seconds: 1),
          curve: Curves.easeOutExpo,
          child: GestureDetector(
            onTap: () {
              if (isClicked) {
                setState(() {
                  turns -= 1 / 4;
                  _controller.reverse();
                });
              } else {
                setState(
                  () {
                    turns += 1 / 4;
                    _controller.forward();
                  },
                );
              }
              isClicked = !isClicked;
            },
            child: AnimatedContainer(
              curve: Curves.easeOutExpo,
              duration: const Duration(seconds: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: customWhiteColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 30.0,
                    offset: isClicked
                        ? const Offset(20, -20)
                        : const Offset(20, 20),
                    color: Colors.grey,
                  ),
                  BoxShadow(
                    blurRadius: 30.0,
                    offset: isClicked
                        ? const Offset(-20, 20)
                        : const Offset(-20, -20),
                    color: Colors.white,
                  )
                ],
              ),
              child: SizedBox(
                height: 150,
                width: 150.0,
                child: Center(
                  child: AnimatedIcon(
                    icon: AnimatedIcons.menu_close,
                    progress: _controller,
                    size: 100,
                    color: customBlackColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
