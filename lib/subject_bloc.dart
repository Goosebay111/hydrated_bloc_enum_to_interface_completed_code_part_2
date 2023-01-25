import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:hydrated_bloc_enum_to_interface_completed_code/subject_event.dart';
import 'package:hydrated_bloc_enum_to_interface_completed_code/subject_state.dart';


class SubjectBloc extends HydratedBloc<SubjectEvent, SubjectState> {
  SubjectBloc() : super(SubjectState.initial()) {
    on<ModifySelectionSubjectEvent>((event, emit) {
      if (state.selectedSubjects.contains(event.item)) {
        return emit(SubjectState(
            selectedSubjects: state.selectedSubjects..remove(event.item)));
      } else {
        return emit(SubjectState(
            selectedSubjects: state.selectedSubjects..add(event.item)));
      }
    });

    on<AddOneToAllSelectedSubjectsEvent>((event, emit) {
      return emit(SubjectState(
          selectedSubjects: state.selectedSubjects
              .map((e) => e.copyWith(damage: e.damage + 1))
              .toList()));
    });
  }

  @override
  SubjectState? fromJson(Map<String, dynamic> json) {
    return SubjectState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SubjectState state) {
    return state.toJson();
  }
}