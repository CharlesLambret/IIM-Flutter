import 'package:flutter/material.dart';

class Education {
  final String institution;
  final String degree;
  final String period;

  Education({required this.institution, required this.degree, required this.period});
}

class EducationSection extends StatelessWidget {
  final List<Education> educations;
  
  EducationSection({Key? key, required this.educations}) : super (key: key);

  @override 
  Widget build(BuildContext contect) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children : [
        Text(
              'Education',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: educations.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                educations[index].institution +
                    ': ' +
                    educations[index].degree +
                    ' ' +
                    educations[index].period,
                style: TextStyle(fontSize: 20),
              ),
            );
          },
        ),
        SizedBox(height: 20),
      ]
    );
  }
}