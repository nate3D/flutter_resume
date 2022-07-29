import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/about_widget.dart';
import 'package:portfolio/screens/widgets/employment_list_widget.dart';
import 'package:portfolio/screens/widgets/floating_action_button/action_button_widget.dart';
import 'package:portfolio/screens/widgets/floating_action_button/expandable_fab_widget.dart';
import 'package:portfolio/screens/widgets/quick_info_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: ExpandableFab(
        tooltip: "Contact Me",
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => launchPhone(),
            icon: const Icon(Icons.phone),
            tooltip: "Call",
          ),
          ActionButton(
            onPressed: () => launchEmail(),
            icon: const Icon(Icons.email),
            tooltip: "Email",
          ),
          ActionButton(
            onPressed: () => launchLinkedIn(),
            icon: const Icon(Icons.web),
            tooltip: "LinkedIn",
          ),
        ],
      ),
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverAppBar(
          stretch: true,
          expandedHeight: screenSize.height * 0.2,
          floating: false,
          pinned: true,
          backgroundColor: Colors.black,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: const [StretchMode.fadeTitle],
            background: Stack(
                alignment: Alignment.center,
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          Theme.of(context).colorScheme.secondary,
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          radius: 90,
                          backgroundImage: Image.asset(imagePath).image),
                    ],
                  ),
                ]),
            title: Text(
              name,
              style: Theme.of(context).textTheme.headline1,
            ),
            titlePadding: const EdgeInsets.only(
              left: 10,
            ),
            expandedTitleScale: 2,
          ),
        ),
        //
        SliverList(
          delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
          ]),
        )
      ]),
    );
  }
}
