import 'dart:math';

import 'package:flutter/material.dart';

class insertion_provider with ChangeNotifier {
  List<int> arr = [46, 60, 21, 10, 90, 5, 30, 50];

  void generaterandom() async {
    int random = Random().nextInt(20) + 10;
    arr.clear();
    notifyListeners();
    await Future.delayed(Duration(milliseconds: 200));
    arr = List.generate(random, (index) => Random().nextInt(200) + 10);
    notifyListeners();
  }

  void insertionSort() async {
    int n = arr.length;
    for (int i = 1; i < n; i++) {
      int key = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j] > key) {
        arr[j + 1] = arr[j];
        await Future.delayed(Duration(microseconds: 1000));
        notifyListeners();
        j = j - 1;
      }
      arr[j + 1] = key;
    }
  }
}
