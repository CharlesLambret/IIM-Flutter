import 'package:flutter/material.dart';
import 'experiences.dart';
import 'experiencesassos.dart';
import 'skills.dart';
import 'educations.dart';
import 'hobbies.dart';
import 'langues.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  final List<Experience> experiences = [
    Experience(
      company: 'Google',
      position: 'Software Engineer',
      period: 'Jan 2020 - Dec 2021',
      description: 'Developed software solutions',
    ),
  ];

  final List<Skill> skills = [
    Skill(name: 'Flutter'),
    Skill(name: 'Dart'),
  ];

  final List<ExperienceAssos> experiencesassos = [
    ExperienceAssos(
      association: 'test 1',
      role: 'test',
      period: '(Année - Année)',
      description: 'test'
    ),
  ];

  final List<Education> educations = [
    Education(
      institution: 'Ecole 1',
      degree: 'Diplôme',
      period: '(Année - Année)',
    ),
  ];

  final List<Language> languages = [
    Language(
      name: 'Français',
      level: 'Langue maternelle',
    ),
    Language(
      name: 'Anglais',
      level: 'Courant',
    ),
  ];

  final List<Hobby> hobbies = [
    Hobby(name: 'Lecture'),
    Hobby(name: 'Voyage'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV Charles Lambret'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGK1HJx4pl2og/profile-displayphoto-shrink_400_400/0/1663072684919?e=1692230400&v=beta&t=-l4FpsWeU6Ih8Ub-_ao4LWcjutNqr3YA_9fZza1cbT4'), // Image from the internet
            ), 
            SizedBox(height: 20),

            Text(
              'Charles Lambret',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Apprenti Chef de Projet Digital',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Email: charleslambretpro@gmail.com',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 30),

            ExperienceSection(experiences: experiences),

            SizedBox(height: 20),

            SkillsSection(skills: skills),

            SizedBox(height: 20),

            ExperienceAssosSection(experiencesassos: experiencesassos),

            SizedBox(height: 20),

            EducationSection(educations: educations),

            SizedBox(height: 20),

            LanguageSection(languages: languages),

            SizedBox(height: 20),

            HobbySection(hobbies: hobbies)
          ],
          
        ),
      ),
    );
  }
}
