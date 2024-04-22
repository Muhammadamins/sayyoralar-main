import 'package:flutter/material.dart';
import 'package:sayyoralar/constants.dart';
import 'package:sayyoralar/models/Project.dart';
import 'package:sayyoralar/responsive.dart';
import 'package:sayyoralar/screens/home/components/home_banner.dart';
import 'package:sayyoralar/screens/main/main_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(childrens: [
      const HomeBanner(),
      const SizedBox(
        height: defaultPadding,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Projects',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
            mobile: ProjectGridView(
              crossAxisCount: 1,
              childAspectRatio: 2,
            ),
            mobileLarge: ProjectGridView(
              crossAxisCount: 2,
            ),
            tablet: ProjectGridView(
              childAspectRatio: 1.1,
            ),
            desktop: ProjectGridView(),
          ),
        ],
      ),
    ]);
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: demo_projects.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => ProjectCard(
              project: demo_projects[index],
            ));
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  _launchURL(String _url) async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {
                _launchURL('https://github.com/alixumer/foodzilla_complete');
              },
              child: const Text(
                "View Showcase>>",
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
