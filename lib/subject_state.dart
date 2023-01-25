import 'package:hydrated_bloc_enum_to_interface_completed_code/item.dart';

class SubjectState {
  SubjectState({required this.selectedSubjects});

  static const String _key = 'subject_state';
  final List<Item> selectedSubjects;

  Map<String, dynamic> toJson() {
    return {_key: selectedSubjects.map((e) => e.toJson()).toList()};
  }

  factory SubjectState.fromJson(Map<String, dynamic> json) {
    return SubjectState(
      selectedSubjects:
          json[_key].map<Item>((e) => Item.fromJson(e)).toList(),
    );
  }

  factory SubjectState.initial() => SubjectState(selectedSubjects: []);
}
