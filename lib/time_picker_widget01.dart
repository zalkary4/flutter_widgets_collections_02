import 'package:flutter/material.dart';

class TimePickerWidget01 extends StatefulWidget {
  const TimePickerWidget01({Key? key}) : super(key: key);

  @override
  _TimePickerWidget01State createState() => _TimePickerWidget01State();
}

class _TimePickerWidget01State extends State<TimePickerWidget01> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${selectedTime.hour}:${selectedTime.minute}'),
          ElevatedButton(
            onPressed: () async {
              final TimeOfDay? timeOfDay = await showTimePicker(
                context: context,
                initialTime: selectedTime,
                initialEntryMode: TimePickerEntryMode.dial,
              );
              if (timeOfDay != null) {
                setState(() {
                  selectedTime = timeOfDay;
                });
              }
            },
            child: const Text('Choose Time'),
          )
        ],
      ),
    );
  }
}
