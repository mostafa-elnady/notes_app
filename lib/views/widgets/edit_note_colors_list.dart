import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_item.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

late int curruntIndex;

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  @override
  void initState() {
    curruntIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: kColors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            curruntIndex = index;
            widget.note.color = kColors[index].value;
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ColorItem(
              color: kColors[index],
              isActive: curruntIndex == index,
            ),
          ),
        );
      },
    );
    ;
  }
}
