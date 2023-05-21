import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sorting/chart/display.dart';
import 'package:sorting/provider/merge_sort_provider.dart';
import 'package:provider/provider.dart';

class merge_sort extends StatelessWidget {
  const merge_sort({super.key});
  @override
  Widget build(BuildContext context) {
    final mergeProvider = Provider.of<MergeSortProvider>(context);
    final array = mergeProvider.numbers;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: display_array(array),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                mergeProvider.generaterandom();
              },
              child: Text("Random Array"),
            ),
            ElevatedButton(
              onPressed: () {
                mergeProvider.mergeSort();
              },
              child: Text('Start Sorting'),
            ),
          ],
        ),
      ],
    );
  }
}
