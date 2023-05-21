import 'dart:math';

import 'package:flutter/material.dart';

class MergeSortProvider with ChangeNotifier {
  List<int> numbers = [46, 60, 21, 10, 90, 5, 30, 50];

  void generaterandom() async {
    int random = Random().nextInt(15) + 10;
    numbers.clear();
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 200));
    numbers = List.generate(random, (index) => Random().nextInt(200) + 10);
    notifyListeners();
  }

  Future<void> mergeSort() async {
    await _mergeSortHelper(0, numbers.length - 1);
    notifyListeners();
  }

  Future<void> _mergeSortHelper(int low, int high) async {
    if (low < high) {
      int mid = (low + high) ~/ 2;
      await _mergeSortHelper(low, mid);
      await _mergeSortHelper(mid + 1, high);
      await _merge(low, mid, high);
    }
  }

  Future<void> _merge(int low, int mid, int high) async {
    List<int> temp = List.filled(high - low + 1, 0);
    int i = low;
    int j = mid + 1;
    int k = 0;

    while (i <= mid && j <= high) {
      if (numbers[i] <= numbers[j]) {
        temp[k++] = numbers[i++];
      } else {
        temp[k++] = numbers[j++];
      }
      await Future.delayed(Duration(milliseconds: 100));
      numbers = [...numbers]; // Trigger the change
      notifyListeners();
    }

    while (i <= mid) {
      temp[k++] = numbers[i++];
      await Future.delayed(Duration(milliseconds: 100));
      numbers = [...numbers]; // Trigger the change
      notifyListeners();
    }

    while (j <= high) {
      temp[k++] = numbers[j++];
      await Future.delayed(Duration(milliseconds: 100));
      numbers = [...numbers]; // Trigger the change
      notifyListeners();
    }

    for (int m = 0; m < temp.length; m++) {
      numbers[low + m] = temp[m];
      await Future.delayed(Duration(milliseconds: 100));
      numbers = [...numbers]; // Trigger the change
      notifyListeners();
    }
  }
}
