import 'package:flutter/material.dart';

class Experience {
  final String company;
  final String position;
  final String period;
  final String description;

  Experience({
    required this.company,
    required this.position,
    required this.period,
    required this.description,
  });
}

class ExperienceSection extends StatelessWidget {
  final List<Experience> experiences;

  ExperienceSection({Key? key, required this.experiences}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
              'Expérience professionnelle:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: experiences.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                experiences[index].company +
                    ': ' +
                    experiences[index].position +
                    ' ' +
                    experiences[index].period,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                experiences[index].description,
                style: TextStyle(fontSize: 16),
              ),
            );
          },
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
