import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActice, required this.color});

  final bool isActice;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isActice
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
            ))
        : CircleAvatar(
            radius: 36,
            backgroundColor: color,
          );
  }
}
