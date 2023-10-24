
import 'package:my_portfolio/Models/mod_data.dart';

class AppData{
  AppData._();

  static ModelData modelData = ModelData(
      name: "Uday Palecha",
      mail: "udaypalecha@gmail.com",
      hobbies:<String> [
        "Travelling",
        "Badminton",
        "Gardening"
      ] ,
      number: "(+91)8882495433",
      bio: devBio,
      skillAndProgress: <SkillAndProgress> [
        SkillAndProgress(
            name:"Inventory Management" ,
            progress:0.9),
        SkillAndProgress(
            name:"Project Management" ,
            progress: 0.8),
        SkillAndProgress(
            name: "PowerTrack" ,
            progress: 0.7),
      ]
  );

    static const String devBio = """Hello there! My name is Uday Palecha and I'm a 4th Year student pursuing my CSE degree from Kurukshetra University.
    I possess strong skills in DSA and have actively participated in hackathons, coding competitions and also contributed to various open-source projects.""";
}