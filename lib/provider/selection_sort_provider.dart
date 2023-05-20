import 'package:flutter/material.dart';
import 'package:sorting/sorting_algo/selection_sort.dart';

class selection_sort_provider with ChangeNotifier {
  List<int> numbers = [64, 34, 25, 12, 22, 11, 90];
  bool isSorting = false;
  void selection_sort() async {
    if (isSorting) return;

    isSorting = true;
    notifyListeners();

    int n = numbers.length;

    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;

      for (int j = i + 1; j < n; j++) {
        if (numbers[j] < numbers[minIndex]) {
          minIndex = j;
        }
      }

      await Future.delayed(Duration(milliseconds: 500));

      if (minIndex != i) {
        int temp = numbers[i];
        numbers[i] = numbers[minIndex];
        numbers[minIndex] = temp;

        notifyListeners();
      }
    }

    isSorting = false;
    notifyListeners();
  }
}
