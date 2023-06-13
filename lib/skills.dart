import 'package:flutter/material.dart';

class Skill {
  final String name;
  Skill({required this.name});
}

class SkillsSection extends StatelessWidget{
  final List<Skill> skills;

  SkillsSection({Key? key, required this.skills}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
              'Compétences : ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                skills[index].name,
              ),
            );
          },
        )
      ]
    );
  }
}