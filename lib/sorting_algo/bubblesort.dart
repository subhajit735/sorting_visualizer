import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sorting/chart/bar.dart';
import 'package:sorting/chart/display.dart';
import '../provider/bubble_sort_provider.dart';

class bubble_sort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final numberListProvider = Provider.of<bubble_sort_provider>(context);
    final numbers = numberListProvider.numbers;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: display_array(numbers),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                numberListProvider.generaterandom();
              },
              child: Text("Random array"),
            ),
            ElevatedButton(
              onPressed: () {
                numberListProvider.bubbleSort();
              },
              child: Text('Start Sorting'),
            ),
          ],
        ),
      ],
    );
  }
}
