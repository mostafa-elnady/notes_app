import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int curruntIndex = 0;

  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.yellow,
    Colors.orange,
    Colors.pink,
    Colors.brown,
    Colors.indigo,
    Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => setState(() => curruntIndex = index),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ColorItem(
              color: colors[index],
              isActive: curruntIndex == index,
            ),
          ),
        );
      },
    );
  }
}
