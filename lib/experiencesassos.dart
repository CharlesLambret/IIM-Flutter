import 'package:flutter/material.dart';

class ExperienceAssos {
  final String association;
  final String role;
  final String period;
  final String description;

  ExperienceAssos({required this.association, required this.role, required this.period, required this.description});
}

class ExperienceAssosSection extends StatelessWidget {
  final List<ExperienceAssos> experiencesassos;

  ExperienceAssosSection({Key? key, required this.experiencesassos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expérience associative:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: experiencesassos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(experiencesassos[index].association + ': ' + experiencesassos[index].role + ' ' + experiencesassos[index].period, style: TextStyle(fontSize: 20)),
              subtitle: Text(experiencesassos[index].description, style: TextStyle(fontSize: 16)),
            );
          },
        ),
      ],
    );
  }
}
