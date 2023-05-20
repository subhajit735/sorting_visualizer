import 'package:flutter/material.dart';

class quick_Sort_Provider with ChangeNotifier {
  List<int> numbers = [46, 60, 21, 10, 90, 5, 30, 50];

  Future<void> quickSort() async {
    await _quickSortHelper(0, numbers.length - 1);
    notifyListeners();
  }

  Future<void> _quickSortHelper(int low, int high) async {
    if (low < high) {
      int pivotIndex = await _partition(low, high);
      await _quickSortHelper(low, pivotIndex - 1);
      await _quickSortHelper(pivotIndex + 1, high);
    }
  }

  Future<int> _partition(int low, int high) async {
    int pivot = numbers[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
      if (numbers[j] < pivot) {
        i++;
        _swap(i, j);
        await Future.delayed(Duration(milliseconds: 20));
        numbers = [...numbers]; // Trigger the change
        notifyListeners();
      }
    }

    _swap(i + 1, high);
    await Future.delayed(Duration(milliseconds: 20));
    numbers = [...numbers]; // Trigger the change
    notifyListeners();

    return i + 1;
  }

  void _swap(int i, int j) {
    int temp = numbers[i];
    numbers[i] = numbers[j];
    numbers[j] = temp;
  }
}
