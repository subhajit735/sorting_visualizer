import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class bar extends StatelessWidget {
  bar(@required this.height);
  int height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            height.toString(),
            style: TextStyle(fontSize: 10),
          ),
          Container(
            width: 6,
            height: height.toDouble() * 1.4,
            decoration: BoxDecoration(
              border: Border.all(width: 1),
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
