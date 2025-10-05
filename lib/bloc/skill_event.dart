import 'package:equatable/equatable.dart';

abstract class SkillEvent extends Equatable {
  const SkillEvent();

  @override
  List<Object> get props => [];
}

class LoadSkills extends SkillEvent {
  const LoadSkills();
}