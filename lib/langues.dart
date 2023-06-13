import 'package:flutter/material.dart';

class Language {
  final String name;
  final String level;

  Language({required this.name, required this.level});
}

class LanguageSection extends StatelessWidget {
  final List<Language> languages;

  LanguageSection({Key? key, required this.languages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Langues:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(languages[index].name + ': ' + languages[index].level, style: TextStyle(fontSize: 20)),
            );
          },
        ),
      ],
    );
  }
}
