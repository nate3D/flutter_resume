import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/employment_list_widget.dart';
import 'package:portfolio/screens/widgets/about_widget.dart';
import 'package:portfolio/screens/widgets/employment_widget.dart';
import 'package:portfolio/screens/widgets/quick_info_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.circle_sharp,
              size: 12,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Nate3D",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        // foregroundColor: Colors.black,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kGradient1,
                    kGradient2,
                  ],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            Center(
                child: Text(
              name,
              style: kTitleText,
            )),
            Center(
                child: Text(
              username,
              style: kSubTitleText,
            )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      //Code to launch resume
                      final Uri url = Uri.parse(resumeLink);
                      await launchUrl(url);
                    },
                    child: Text(
                      "View Resume",
                      style: kSubTitleText,
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () async {
                      //Call to launch email
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: contactEmail,
                      );
                      await launchUrl(emailLaunchUri);
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          size: 16,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Contact",
                          style: kSubTitleText.copyWith(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Flexible(flex: 3, child: AboutWidget()),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: const [QuickInfoWidget()],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const AboutWidget(),
                          Column(
                            children: const [
                              QuickInfoWidget(),
                            ],
                          ),
                        ],
                      ),
              ),
            ),
            Center(
                child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const EmploymentListWidget(),
            )),
          ],
        ),
      ),
    );
  }
}
