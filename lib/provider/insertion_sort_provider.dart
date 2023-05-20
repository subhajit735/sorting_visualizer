import 'package:flutter/material.dart';

class insertion_provider with ChangeNotifier {
  List<int> arr = [46, 60, 21, 10, 90, 5, 30, 50];

  void insertionSort() async {
    int n = arr.length;
    for (int i = 1; i < n; i++) {
      int key = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j] > key) {
        arr[j + 1] = arr[j];
        await Future.delayed(Duration(milliseconds: 500));
        notifyListeners();
        j = j - 1;
      }
      arr[j + 1] = key;
    }
  }
}
