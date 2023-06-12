import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class Experience {
  final String company;
  final String position;
  final String period;

  Experience({required this.company, required this.position, required this.period});
}

class Skill {
  final String name;

  Skill({required this.name});
}

class AssociationExperience {
  final String association;
  final String role;
  final String period;

  AssociationExperience({required this.association, required this.role, required this.period});
}

class Education {
  final String institution;
  final String degree;
  final String period;

  Education({required this.institution, required this.degree, required this.period});
}

class MyApp extends StatelessWidget {
  final List<Experience> experiences = [
    Experience(
      company: 'Exemple d\'entreprise 1',
      position: 'Titre du poste',
      period: '(Année - Année)',
    ),
    Experience(
      company: 'Exemple d\'entreprise 2',
      position: 'Titre du poste',
      period: '(Année - Année)',
    ),
  ];

  final List<Skill> skills = [
    Skill(name: 'Flutter'),
    Skill(name: 'Dart'),
  ];

  final List<AssociationExperience> associationExperiences = [
    AssociationExperience(
      association: 'Exemple d\'association 1',
      role: 'Titre du poste',
      period: '(Année - Année)',
    ),
  ];

  final List<Education> educations = [
    Education(
      institution: 'Exemple d\'institution',
      degree: 'Diplôme',
      period: '(Année - Année)',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV Charles Lambret'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQGK1HJx4pl2og/profile-displayphoto-shrink_400_400/0/1663072684919?e=1692230400&v=beta&t=-l4FpsWeU6Ih8Ub-_ao4LWcjutNqr3YA_9fZza1cbT4'), // Image from the internet
            ), 
            SizedBox(height: 20), 
            Text(
              'Nom: Lambret Charles',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Email: mon.email@example.com',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
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
                  title: Text(experiences[index].company, style: TextStyle(fontSize: 20)),
                  subtitle: Text(experiences[index].position + ': ' + experiences[index].period, style: TextStyle(fontSize: 20)),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'Compétences:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: skills.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(skills[index].name, style: TextStyle(fontSize: 20)),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'Expérience associative:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: associationExperiences.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(associationExperiences[index].association, style: TextStyle(fontSize: 20)),
                  subtitle: Text(associationExperiences[index].role + ': ' + associationExperiences[index].period, style: TextStyle(fontSize: 20)),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'Éducation:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: educations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(educations[index].institution, style: TextStyle(fontSize: 20)),
                  subtitle: Text(educations[index].degree + ': ' + educations[index].period, style: TextStyle(fontSize: 20)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
