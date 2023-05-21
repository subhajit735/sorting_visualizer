import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:sorting/chart/display.dart';
import 'package:sorting/provider/insertion_sort_provider.dart';

class insertion_sort extends StatelessWidget {
  insertion_sort({super.key});
 

  @override
  Widget build(BuildContext context) {
    final insertionProvider = Provider.of<insertion_provider>(context);
    final array = insertionProvider.arr;
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
                insertionProvider.generaterandom();
              },
              child: Text("Random Array"),
            ),
            ElevatedButton(
              onPressed: () {
                insertionProvider.insertionSort();
              },
              child: Text('Start Sorting'),
            ),
          ],
        ),
      ],
    );
  }
}
