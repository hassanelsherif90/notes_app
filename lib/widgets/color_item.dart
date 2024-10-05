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

class ListColorItem extends StatefulWidget {
  const ListColorItem({super.key});

  @override
  State<ListColorItem> createState() => _ListColorItemState();
}

class _ListColorItemState extends State<ListColorItem> {
  int currentIndex = 0;

  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.amber,
    Colors.indigo,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActice: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
