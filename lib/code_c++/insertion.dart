import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class insertion_code extends StatelessWidget {
  const insertion_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '#include <iostream>'
        '#include <vector>'
        'void insertionSort(std::vector<int>& arr) {'
        '  int n = arr.size();'
        '  for (int i = 1; i < n; i++) {'
        '    int key = arr[i];'
        '    int j = i - 1;'
        '    while (j >= 0 && arr[j] > key) {'
        '      arr[j + 1] = arr[j];'
        '      j--;'
        '    }'
        '   arr[j + 1] = key;'
        '  }'
        '}'
        'int main() {'
        '  std::vector<int> arr = {4, 2, 7, 1, 5};'
        '  std::cout << "Original Array: ";'
        '  for (int num : arr) {'
        '    std::cout << num << " ";'
        '  }'
        '  std::cout << std::endl;'
        '  insertionSort(arr);'
        '  std::cout << "Sorted Array: ";'
        '  for (int num : arr) {'
        '    std::cout << num << " ";'
        '  }'
        '  std::cout << std::endl;'
        '  return 0;'
        '}',
        style: TextStyle(),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
