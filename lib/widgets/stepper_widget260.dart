import 'package:flutter/material.dart';

class StepperWidget260 extends StatefulWidget {
  const StepperWidget260({Key? key}) : super(key: key);

  @override
  _StepperWidget260State createState() => _StepperWidget260State();
}

class _StepperWidget260State extends State<StepperWidget260> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stepper(
        steps: [
          Step(
            title: const Text('Step 1'),
            content: const Text(
              'Information for step 1',
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
            isActive: _currentStep == 0,
          ),
          Step(
            title: const Text('Step 2'),
            content: const Text(
              'Information for step 2',
              style: TextStyle(
                color: Colors.orangeAccent,
              ),
            ),
            isActive: _currentStep == 1,
          ),
          Step(
            title: const Text('Step 3'),
            content: const Text(
              'Information for step 3',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            isActive: _currentStep == 2,
          ),
        ],
        onStepTapped: (int newIndex) {
          setState(() {
            _currentStep = newIndex;
          });
        },
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep != 2) {
            setState(() {
              _currentStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_currentStep != 0) {
            setState(() {
              _currentStep -= 1;
            });
          }
        },
        type: StepperType.horizontal,
        // type: StepperType.vertical,
      ),
    );
  }
}
