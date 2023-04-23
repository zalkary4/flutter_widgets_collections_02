import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';

class IncrementIntent extends Intent {
  const IncrementIntent();
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}

class ShortCutsWidget extends StatefulWidget {
  const ShortCutsWidget({Key? key}) : super(key: key);

  @override
  _ShortCutsWidgetState createState() => _ShortCutsWidgetState();
}

class _ShortCutsWidgetState extends State<ShortCutsWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: <ShortcutActivator, Intent>{
        LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
        LogicalKeySet(LogicalKeyboardKey.arrowLeft): const DecrementIntent(),
      },
      child: Actions(
        actions: {
          IncrementIntent: CallbackAction(
            onInvoke: (intent) {
              setState(
                () {
                  count = count + 2;
                },
              );
              return null;
            },
          ),
          DecrementIntent: CallbackAction(
            onInvoke: (intent) {
              setState(
                () {
                  count = count - 2;
                },
              );
              return null;
            },
          )
        },
        child: Focus(
          child: Center(
            child: Text(
              'Counter: $count',
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
