import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/models/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class RecentProject extends StatelessWidget {
  const RecentProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Some of My Recent Projects",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          children: [
            ProjectCard(
              projectModel: projects[0],
              url: "https://youtu.be/Rkjr4m3SMyo?si=g-mg8KAlXYJ6mv4G",
            ),
            ProjectCard(
              projectModel: projects[1],
              url: "https://youtu.be/UHUSqJDKe-Q?si=qRQugB6fyxt6fgOT",
            ),
            ProjectCard(
              projectModel: projects[2],
              url: "https://youtu.be/RSFj5HimAd4?si=ZZdpsfq6XzFIrcgH",
            ),
            ProjectCard(
              projectModel: projects[3],
              url: "https://youtu.be/PYSg0_lfff4?si=rTkkMgZI2P22ODf6",
            ),
            ProjectCard(
              projectModel: projects[4],
              url: "https://youtu.be/qc-2JZ42Uz8?si=E4P7TQ1hCFMRFk55",
            ),
          ],
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ProjectModel projectModel;
  final String url;
  const ProjectCard({super.key, required this.projectModel, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: DecoratedBox(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            spreadRadius: 3,
          ),
        ], borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: SizedBox(
          width: Responsive.isMobile(context)
              ? Responsive.widthOfScreen(context) * 0.9
              : Responsive.widthOfScreen(context) / 4,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(projectModel.imgURL),
              ),
              Text(
                projectModel.projectName,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  projectModel.description!,
                  maxLines: 5,
                  style: const TextStyle(
                    fontSize: 16,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 6,
                ),
                child: TextButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse(url),
                    );
                  },
                  child: const Text(
                    "Check In Out",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
