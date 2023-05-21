import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class bubble_sort_provider with ChangeNotifier {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];

  void generaterandom() async {
    int random = Random().nextInt(15) + 5;
    numbers.clear();
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 200));
    numbers = List.generate(random, (index) => Random().nextInt(200) + 10);
    notifyListeners();
  }

  void bubbleSort() async {
    int n = numbers.length;

    for (int i = 0; i < n - 1; i++) {
      bool swapped = false;

      for (int j = 0; j < n - i - 1; j++) {
        if (numbers[j] > numbers[j + 1]) {
          int temp = numbers[j];
          numbers[j] = numbers[j + 1];
          numbers[j + 1] = temp;
          swapped = true;

          await Future.delayed(
              Duration(milliseconds: 100)); // Delay for visualization
          notifyListeners();
        }
      }

      // If no two elements were swapped in the inner loop, the array is already sorted
      if (!swapped) {
        break;
      }
    }
  }
}
