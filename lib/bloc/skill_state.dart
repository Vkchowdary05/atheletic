import 'package:equatable/equatable.dart';
import '../models/skill_model.dart';

abstract class SkillState extends Equatable {
  const SkillState();

  @override
  List<Object> get props => [];
}

class SkillInitial extends SkillState {
  const SkillInitial();
}

class SkillLoading extends SkillState {
  const SkillLoading();
}

class SkillLoaded extends SkillState {
  final Map<String, List<Skill>> groupedSkills;

  const SkillLoaded(this.groupedSkills);

  @override
  List<Object> get props => [groupedSkills];
}

class SkillError extends SkillState {
  final String message;

  const SkillError(this.message);

  @override
  List<Object> get props => [message];
}