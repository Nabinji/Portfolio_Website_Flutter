import 'package:flutter/material.dart';
import 'package:portfolio_website/Responsive/responsive.dart';
import 'package:portfolio_website/Utils/colors.dart';
import 'package:portfolio_website/View/Components/about_me.dart';
import 'package:portfolio_website/View/Components/drawer.dart';
import 'package:portfolio_website/View/Components/prfile_and_intro.dart';
import 'package:portfolio_website/View/Components/recent_project.dart';
import 'package:portfolio_website/View/Components/social_icons.dart';
import 'package:portfolio_website/View/Components/top_skill.dart';
import 'package:portfolio_website/View/components/contact_form.dart';
import 'package:portfolio_website/View/components/footer.dart';
import 'package:portfolio_website/View/components/topbar.dart';

class DeveloperPortFolio extends StatelessWidget {
  DeveloperPortFolio({super.key});
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Nabin Paudyal",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: textColor,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 3,
        toolbarHeight: 70,
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 13),
                  child: IconButton(
                    onPressed: () {
                      _globalKey.currentState!.openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: textColor,
                      size: 35,
                    ),
                  ),
                )
              : TopBar(
                  scrollController: _scrollController,
                ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(scrollController: _scrollController)
          : null,
      body: SafeArea(
        child: Stack(
          children: [
            // for Body parts
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  const ProfileAndIntro(),
                  SizedBox(height: Responsive.isMobile(context) ? 40 : 0),
                  const AboutMe(),
                  const SizedBox(height: 55),
                  const TopSkills(),
                  const SizedBox(height: 55),
                  const RecentProject(),
                  const SizedBox(height: 55),
                  const ContactForm(),
                  const SizedBox(height: 55),
                  const Footer(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SocialIcons()
          ],
        ),
      ),
    );
  }
}
// now we make when we click on skill in top bar it show the skill section by scrolling 
// now at last we add the social site