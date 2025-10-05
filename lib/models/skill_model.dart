import 'package:equatable/equatable.dart';

class Skill extends Equatable {
  final String name;
  final String level;
  final String image;

  const Skill({
    required this.name,
    required this.level,
    required this.image,
  });

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      name: json['name'] as String,
      level: json['level'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'level': level,
      'image': image,
    };
  }

  @override
  List<Object?> get props => [name, level, image];
}