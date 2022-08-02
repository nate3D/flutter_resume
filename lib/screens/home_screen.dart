import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/employment_list_widget.dart';
import 'package:portfolio/screens/widgets/floating_action_button/action_button_widget.dart';
import 'package:portfolio/screens/widgets/floating_action_button/expandable_fab_widget.dart';
import 'package:portfolio/screens/widgets/quick_info_widget.dart';
import 'package:portfolio/screens/widgets/technology_carousel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildHomeScreen(context);
  }

  Scaffold _buildHomeScreen(BuildContext context) {
    return Scaffold(
      floatingActionButton: _buildExpandableFab(context),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildDesktopBody(context, constraints);
          } else {
            return _buildMobileBody(context, constraints);
          }
        },
      ),
    );
  }

  ExpandableFab _buildExpandableFab(BuildContext context) {
    return ExpandableFab(
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
        ActionButton(
          onPressed: () => launchResume(),
          icon: const Icon(Icons.contact_page),
          tooltip: "Resume",
        ),
      ],
    );
  }

  Widget _buildDesktopSliverAppBar(
      BuildContext context, BoxConstraints constraints) {
    return SliverAppBar(
      stretch: true,
      expandedHeight: constraints.maxHeight * 0.2,
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
                      radius: 90, backgroundImage: Image.asset(imagePath).image)
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
    );
  }

  Widget _buildMobileSliverAppBar(
      BuildContext context, BoxConstraints constraints) {
    return SliverAppBar(
      stretch: true,
      expandedHeight: constraints.maxHeight * 0.2,
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
                      radius: 60,
                      backgroundImage: Image.asset(imagePath).image),
                ],
              ),
            ]),
        title: Text(
          name,
          style: Theme.of(context).textTheme.headline4?.copyWith(shadows: [
            const Shadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ]),
        ),
        titlePadding: const EdgeInsets.only(
          left: 10,
        ),
        expandedTitleScale: 2,
      ),
    );
  }

  Widget _buildDesktopBody(BuildContext context, BoxConstraints constraints) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      _buildDesktopSliverAppBar(context, constraints),
      SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: constraints.maxWidth * 0.15),
                          child: Column(
                            children: [
                              Text("Technologies",
                                  style: Theme.of(context).textTheme.headline2),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    width: constraints.maxWidth * 0.2,
                                    child: const TechnologyCarouselWidget()),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: const [QuickInfoWidget()],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        "Professional Experience",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.8,
                        child: const EmploymentListWidget(),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ]),
      )
    ]);
  }

  Widget _buildMobileBody(BuildContext context, BoxConstraints constraints) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      _buildMobileSliverAppBar(context, constraints),
      SliverList(
        delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: constraints.maxWidth * 0.8,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text("Technologies",
                                style: Theme.of(context).textTheme.headline2),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  width: constraints.maxWidth,
                                  child: const TechnologyCarouselWidget()),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            QuickInfoWidget(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        "Professional Experience",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.8,
                        child: const EmploymentListWidget(),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ]),
      )
    ]);
  }
}
