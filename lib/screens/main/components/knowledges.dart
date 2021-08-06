import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "React, React Native, Redux"),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "NodeJs, Express, NestJs"),
        KnowledgeText(text: "Angular, Laravel, Symfony"),
        KnowledgeText(text: "Oracle, MySQL, MongoDb, Firebase"),
        KnowledgeText(text: "GIT Knowledge"),
        KnowledgeText(text: "Scrum, Merise, UML"),
        KnowledgeText(text: "Figma, PhotoSop, Illustrator"),
        KnowledgeText(text: "Premiere Pro, Filmora"),
        KnowledgeText(text: "Googling"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}