import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class QuickInfoWidget extends StatelessWidget {
  const QuickInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Location",
            style: kSubTitleText,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse("https://$locationUrl");
              await launchUrl(url);
            },
            child: Wrap(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Text(
                  location,
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
            style: kSubTitleText,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse("https://$linkedIn");
              await launchUrl(url);
            },
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
            "Website",
            style: kSubTitleText,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse("https://$website");
              await launchUrl(url);
            },
            child: Wrap(
              children: [
                Text(website),
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
            style: kSubTitleText,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              final Uri url = Uri.parse("https://$github");
              await launchUrl(url);
            },
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
            style: kSubTitleText,
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () async {
              //Call to launch email
              final Uri emailLaunchUri = Uri(
                scheme: 'mailto',
                path: contactEmail,
              );
              await launchUrl(emailLaunchUri);
            },
            child: Wrap(
              children: [
                Text(email),
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
