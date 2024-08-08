import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Responsive/responsive.dart';
import '../../models/project_model.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Some of my Recent Projects',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              project: projects[0],
              url: "https://youtu.be/Rkjr4m3SMyo?si=g-mg8KAlXYJ6mv4G",
            ),
            ProjectCard(
              project: projects[1],
              url: "https://youtu.be/UHUSqJDKe-Q?si=qRQugB6fyxt6fgOT",
            ),
            ProjectCard(
              project: projects[2],
              url: "https://youtu.be/RSFj5HimAd4?si=ZZdpsfq6XzFIrcgH",
            ),
            ProjectCard(
              project: projects[3],
              url: "https://youtu.be/PYSg0_lfff4?si=rTkkMgZI2P22ODf6",
            ),
            ProjectCard(
              project: projects[4],
              url: "https://youtu.be/qc-2JZ42Uz8?si=E4P7TQ1hCFMRFk55",
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  final String url;
  const ProjectCard({
    super.key,
    required this.project,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          width: !Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) / 4
              : Responsive.widthOfScreen(context) * 0.9,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(project.imgURL),
              ),
              Text(
                project.projectName,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  project.description!,
                  textAlign: TextAlign.justify,
                  maxLines: 5,
                  style: const TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 6),
                child: TextButton(
                  child: const Text(
                    'Check it Out',
                    style: TextStyle(fontSize: 17),
                  ),
                  onPressed: () {
                    launchUrl(
                      Uri.parse(url),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

