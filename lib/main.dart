import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sorting/provider/merge_sort_provider.dart';
import 'package:sorting/provider/quick_sort_provider.dart';
import 'package:sorting/sorting_algo/bubblesort.dart';
import 'package:sorting/sorting_algo/insertion_sort.dart';
import 'package:sorting/sorting_algo/selection_sort.dart';
import 'package:sorting/chart/bar.dart';
import 'package:sorting/home.dart';
import 'package:sorting/provider/insertion_sort_provider.dart';
import 'package:sorting/provider/selection_sort_provider.dart';
import './provider/bubble_sort_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => selection_sort_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => bubble_sort_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => insertion_provider(),
        ),
        ChangeNotifierProvider(
          create: (context) => MergeSortProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => quick_Sort_Provider(),
        ),
      ],
      child: Home(),
    ),
  );
}
