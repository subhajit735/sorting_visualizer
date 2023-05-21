import 'dart:math';

import 'package:flutter/material.dart';

class counting_sort_provider with ChangeNotifier {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];

  void generaterandom() async {
    int random = Random().nextInt(15) + 10;
    arr.clear();
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 200));
    arr = List.generate(random, (index) => Random().nextInt(200) + 10);
    notifyListeners();
  }

  void countingsSort() async {
    // Create an array to store the count of each element
    List<int> count = List<int>.filled(90 + 1, 0);

    // Count the occurrences of each element
    for (int i = 0; i < arr.length; i++) {
      count[arr[i]]++;
    }

    // Calculate the cumulative count
    for (int i = 1; i < count.length; i++) {
      count[i] += count[i - 1];
    }

    // Create a new array to store the sorted elements
    List<int> sortedArr = List<int>.filled(arr.length, 0);

    // Place the elements in the sorted order
    for (int i = arr.length - 1; i >= 0; i--) {
      sortedArr[count[arr[i]] - 1] = arr[i];
      count[arr[i]]--;
    }
  }
}
