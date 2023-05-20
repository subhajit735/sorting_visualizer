import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TimeDelay with ChangeNotifier {
  int _delay = 500;

  int get delay => _delay;

  set delay(int value) {
    _delay = value;
    notifyListeners();
  }
}

class DelaySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TimeDelay>(
      builder: (context, timeDelay, child) {
        return Slider(
          value: timeDelay.delay.toDouble(),
          // min: 0,
          // max: 10,
          // divisions: 9,
          // label: '${timeDelay.delay} ms',
          onChanged: (value) {
            timeDelay.delay = value.toInt();
          },
        );
      },
    );
  }
}
