import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/skill_model.dart';

class SkillRepository {
  Future<List<Skill>> loadSkills() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/skills.json');
      final List<dynamic> jsonData = json.decode(jsonString);
      
      return jsonData.map((json) => Skill.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load skills: $e');
    }
  }

  Map<String, List<Skill>> groupSkillsByLevel(List<Skill> skills) {
    final Map<String, List<Skill>> grouped = {
      'Basic': [],
      'Intermediate': [],
      'Advanced': [],
    };

    for (var skill in skills) {
      if (grouped.containsKey(skill.level)) {
        grouped[skill.level]!.add(skill);
      }
    }

    return grouped;
  }
}