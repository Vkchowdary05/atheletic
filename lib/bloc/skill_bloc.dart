import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/skill_repository.dart';
import 'skill_event.dart';
import 'skill_state.dart';

class SkillBloc extends Bloc<SkillEvent, SkillState> {
  final SkillRepository repository;

  SkillBloc({required this.repository}) : super(const SkillInitial()) {
    on<LoadSkills>(_onLoadSkills);
  }

  Future<void> _onLoadSkills(
    LoadSkills event,
    Emitter<SkillState> emit,
  ) async {
    emit(const SkillLoading());
    
    try {
      final skills = await repository.loadSkills();
      final groupedSkills = repository.groupSkillsByLevel(skills);
      emit(SkillLoaded(groupedSkills));
    } catch (e) {
      emit(SkillError(e.toString()));
    }
  }
}