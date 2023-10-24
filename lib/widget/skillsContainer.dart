import 'package:flutter/material.dart';


class SkillsContainer extends StatelessWidget {

  final String SkillsTitle;
  const SkillsContainer({super.key , required this.SkillsTitle});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding:const EdgeInsets.symmetric(horizontal: 12 , vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text(SkillsTitle,
        style:const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: "Lexend"
        ),
      ),
    );
  }
}
