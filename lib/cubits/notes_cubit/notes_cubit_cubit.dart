import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  List<NoteModel>? notes;

  fetchAllNotes() {
    Box<NoteModel> box = Hive.box(kNotesBox);
    notes = box.values.toList();
  }
}
