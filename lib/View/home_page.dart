import 'package:flutter/material.dart';
import '../Utils/colors.dart';
import 'components/contact_form.dart';
import 'components/footer.dart';
import 'components/profile_and_intro.dart';
import 'components/topbar.dart';
import 'components/more_about_me.dart';
import 'components/my_drawer.dart';
import 'components/recent_projects.dart';
import 'components/social_icons_bar.dart';
import 'components/top_skills.dart';
import '../Responsive/responsive.dart';

class DeveloperPortFolio extends StatelessWidget {
  DeveloperPortFolio({super.key});
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Nabin Paudyal',
          style: TextStyle(
            fontFamily: "Verdana",
            fontSize: 28,
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 3,
        // top  bar
        actions: [
          Responsive.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: textColor,
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : TopBar(
                  sc: myScrollController,
                ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? MyDrawer(
              sc: myScrollController,
            )
          : null,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          mini: Responsive.isMobile(context) ? true : false,
          onPressed: () {
            myScrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInQuad,
            );
          },
          child: const Icon(
            Icons.vertical_align_top,
            size: 35,
          )),
      body: SafeArea(
        child: Stack(
          children: [
            // for body parts
            SingleChildScrollView(
              controller: myScrollController,
              child: const Column(
                children: [
                  ProfileAndIntro(),
                  AboutMe(),
                  SizedBox(height: 50),
                  TopSkills(),
                  SizedBox(height: 50),
                  RecentProjects(),
                  SizedBox(height: 50),
                  ContactForm(),
                  SizedBox(height: 50),
                  Footer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
            // for social icon
            const SocialIcons(),
          ],
        ),
      ),
    );
  }
}
