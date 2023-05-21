import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sorting/code_c++/insertion.dart';
import 'package:sorting/controller.dart';
import 'package:sorting/sorting_algo/bubblesort.dart';
import 'package:sorting/sorting_algo/insertion_sort.dart';
import 'package:sorting/sorting_algo/merge_sort.dart';
import 'package:sorting/sorting_algo/quick_sort.dart';
import 'package:sorting/sorting_algo/selection_sort.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double speed = 1;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    speed = 1;
  }

  int selectedItem = 1;

  void _onDropdownChanged(int selectedItem) {
    setState(() {
      selectedItem = selectedItem;
    });
  }

  List<String> sort_list = [
    'Insertion Sort',
    'Bubble Sort',
    'Selection Sort',
    'Merge Sort',
    'Quick Sort'
  ];

  List<Widget> pages = [
    insertion_sort(),
    bubble_sort(),
    selection_sort(),
    merge_sort(),
    quick_sort()
  ];

  List<Widget> code = [insertion_code()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Sort Visualize"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  pages[selectedItem],
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Select a Sort ",
                        style: TextStyle(fontSize: 18),
                      ),
                      DropdownButton(
                        elevation: 10,
                        hint: Text(sort_list[selectedItem]),
                        items: [
                          DropdownMenuItem(
                            value: 0,
                            child: Text('Insertion Sort'),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text('Bubble Sort'),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text('Selection Sort'),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text('Merge Sort'),
                          ),
                          DropdownMenuItem(
                            value: 4,
                            child: Text('Quick Sort'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value!;
                            // print(selectedItem);
                          });
                        },
                      ),
                    ],
                  ),

                  // code[0],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
