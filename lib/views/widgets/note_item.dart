import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/edit_note_view_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteViewBody(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24),
        decoration: BoxDecoration(
          color: const Color(0xffFFCD7A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Build your career with Sarwat samy',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 28,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                'May 21 , 2022',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
