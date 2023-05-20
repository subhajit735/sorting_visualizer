import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:provider/provider.dart';
import 'package:sorting/chart/bar.dart';

class display_array extends StatefulWidget {
  List<int> numbers;
  display_array(@required this.numbers);

  @override
  State<display_array> createState() => _display_arrayState();
}

class _display_arrayState extends State<display_array> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: widget.numbers.map((int height) {
            return bar(height);
          }).toList(),
        ),
      ),
    );
  }
}
