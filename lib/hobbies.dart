import 'package:flutter/material.dart';

class Hobby {
  final String name;

  Hobby({required this.name});
}

class HobbySection extends StatelessWidget{
  final List<Hobby> hobbies;

  HobbySection({Key? key, required this.hobbies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Loisirs:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: hobbies.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(hobbies[index].name, style: TextStyle(fontSize: 20)),
            );
          },
        ),
      ],
    );
  }
}
