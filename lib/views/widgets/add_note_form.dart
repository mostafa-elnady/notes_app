import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/colors_list_view.dart';
import 'package:notes_app/views/widgets/custom_bottom.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextFormField(
            onSave: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSave: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          const SizedBox(
            height: 38 * 2,
            child: ColorsListView(),
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButtom(
                isLooding: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateFormat('MMMM d, yyyy')
                            .format(DateTime.now())
                            .toString(),
                        color: Colors.blue.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
