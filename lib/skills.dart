import 'package:flutter/material.dart';

class Skill {
  final String name;
  Skill({required this.name});
}

class SkillsSection extends StatelessWidget {
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
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: skills.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 4.0, 
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  skills[index].name,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
