import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sorting/chart/display.dart';
import 'package:sorting/provider/merge_sort_provider.dart';
import 'package:provider/provider.dart';
import 'package:sorting/provider/quick_sort_provider.dart';

class quick_sort extends StatelessWidget {
  const quick_sort({super.key});
  @override
  Widget build(BuildContext context) {
    final quickProvider = Provider.of<quick_Sort_Provider>(context);
    final array = quickProvider.numbers;
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
                quickProvider.generaterandom();
              },
              child: Text('Random Array'),
            ),
            ElevatedButton(
              onPressed: () {
                quickProvider.quickSort();
              },
              child: Text('Start Sorting'),
            ),
          ],
        ),
      ],
    );
  }
}
