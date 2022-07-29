import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Experience",
          style: Theme.of(context).textTheme.headline4,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(aboutWorkExperience),
        const Divider(),
        Text("About Me", style: Theme.of(context).textTheme.headline4),
        const SizedBox(
          height: 10,
        ),
        Text(aboutMeSummary),
      ],
    );
  }
}
