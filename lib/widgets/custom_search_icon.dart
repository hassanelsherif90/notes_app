import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: customBuildBoxDecoration(),
      child: const Icon(Icons.search, size: 28),
    );
  }

  BoxDecoration customBuildBoxDecoration() {
    return BoxDecoration(
      color: Colors.white.withOpacity(.1),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
