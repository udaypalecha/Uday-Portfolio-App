
class ModelData{
  final String name;
  final String number;
  final String mail;
  final String bio;
  final List<String> hobbies;
  final List<SkillAndProgress> skillAndProgress;

  ModelData(
  {
    required this.name,
  required this.mail,
  required this.hobbies,
  required this.number,
  required this.bio,
  required this.skillAndProgress
}
      );
}

class SkillAndProgress{
  final String name;
  final double progress;

  SkillAndProgress(
  {
    required this.name,
    required this.progress,
}
      );
}