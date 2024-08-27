import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async {
    emit(AddNotesLoading());
    try {
      Box<NoteModel> box = Hive.box<NoteModel>(kNotesBox);
      await box.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesError(e.toString()));
    }
  }
}
