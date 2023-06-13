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
      company: 'Erium',
      position: 'Apprenti | Chef de Projet Digital ',
      period: 'Juin 2022 - Septembre 2023',
      description: 'Production & maintien des supports du produit Cyber Investigation, compte-rendu de données clients, satisfaction client. Travail en collaboration avec le Chef de Projet Digital, le Directeur de service et l’équipe produit.',
    ),
    Experience(
      company: 'Expairs | Bed Boat | Night Square',
      position: 'Freelance | Chef de Projet Digital ',
      period: 'Juillet 2020 - Aujourd\'hui',
      description: 'Travail seul ou en collaboration avec un autre chef de projet digital afin de produire différents livrables : parcours utilisateurs et maquettes de sites, réalisations no-code.',
    ),
    Experience(
      company: 'Seed',
      position: 'Stage | Chef de Projet Digital ',
      period: 'Juillet 2021 - Août 2021',
      description: 'Travail en collaboration direct avec le président de l’entreprise pour effectuer des veilles juridiques & sectorielles, mettre à niveau la comptabilité de l’entreprise & ses outils numériques.',
    ),
  ];

  final List<Skill> skills = [
    Skill(name: 'Flutter'),
    Skill(name: 'Python'),
    Skill(name: 'React'),
    Skill(name: 'Node'),
    Skill(name: 'Laravel'),
    Skill(name: 'Analytics'),
    Skill(name: 'Amplitude'),
    Skill(name: 'Trello'),
    Skill(name: 'Airtable'),
    Skill(name: 'Zapier'),
    Skill(name: 'Suite Adobe'),
    Skill(name: 'Analytics'),
    Skill(name: 'Notion'),
  ];

  final List<ExperienceAssos> experiencesassos = [
    ExperienceAssos(
      association: 'Repairs!94 | Repairs!75 - Mairie de Paris | Léo & Co',
      role: 'Bénévole | Chef de projet digital',
      period: '2020-2023',
      description: 'Travail seul ou en collaboration avec une équipe de freelances afin de livrer différents produits du même type que mes productions freelances'
    ),
  ];

  final List<Education> educations = [
    Education(
      institution: 'IIM',
      degree: 'Bachelor Coding & Digital Innovation',
      period: '2020-2023',
    ),
  ];

  final List<Language> languages = [
    Language(
      name: 'Français',
      level: 'Langue maternelle',
    ),
    Language(
      name: 'Anglais',
      level: 'C1',
    ),
  ];

  final List<Hobby> hobbies = [
    Hobby(name: 'Guitare'),
    Hobby(name: 'Jeux-vidéo'),
    Hobby(name: 'Lecture'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV Charles Lambret'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8, // Utilisez 80% de la largeur du parent
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
            )
          )
        ),
      ),
    );
  }
}
