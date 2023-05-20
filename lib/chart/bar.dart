import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class bar extends StatelessWidget {
  bar(@required this.height);
  int height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: height.toDouble() * 3.5,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        color: Colors.amber,
      ),
    );
  }
}
