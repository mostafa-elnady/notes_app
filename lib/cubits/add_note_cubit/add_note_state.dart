class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {}

class AddNotesError extends AddNotesState {
  final String errMessage;
  AddNotesError({required this.errMessage});
}
