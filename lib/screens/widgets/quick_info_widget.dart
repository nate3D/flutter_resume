import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';

class QuickInfoWidget extends StatelessWidget {
  const QuickInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Location",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => launchLocation(),
            child: Wrap(
              children: [
                Text(location),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.location_history,
                  size: 16,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "LinkedIn",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => launchLinkedIn(),
            child: Wrap(
              children: [
                Text(linkedIn),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.launch,
                  size: 16,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Github",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => launchGitHub(),
            child: Wrap(
              children: [
                Text(github),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.launch,
                  size: 16,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Email",
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () => launchEmail(),
            child: Wrap(
              children: [
                Text(contactEmail),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.launch,
                  size: 16,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
