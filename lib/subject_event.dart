import 'package:hydrated_bloc_enum_to_interface_completed_code/item.dart';

abstract class SubjectEvent {}

class ModifySelectionSubjectEvent extends SubjectEvent {
  ModifySelectionSubjectEvent(this.item);
  final Item item;
}

class AddOneToAllSelectedSubjectsEvent extends SubjectEvent {}
