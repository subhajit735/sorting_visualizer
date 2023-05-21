import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:sorting/chart/display.dart';
import 'package:sorting/provider/selection_sort_provider.dart';

class selection_sort extends StatelessWidget {
  const selection_sort({super.key});

  @override
  Widget build(BuildContext context) {
    final selectprov = Provider.of<selection_sort_provider>(context);
    final array = selectprov.numbers;
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
                selectprov.generaterandom();
              },
              child: Text('Random Array'),
            ),
            ElevatedButton(
              onPressed: () {
                selectprov.selection_sort();
              },
              child: Text('Start Sorting'),
            ),
          ],
        ),
      ],
    );
  }
}
