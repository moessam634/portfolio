import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();
  final skillsKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context,
          curve: Curves.easeInOut, duration: Duration(milliseconds: 500));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onNavItemSelected: (section) {
          switch (section) {
            case "Home":
              scrollToSection(homeKey);
              break;
            case "About":
              scrollToSection(aboutKey);
              break;
            case "Projects":
              scrollToSection(projectsKey);
              break;
            case "Contact":
              scrollToSection(contactKey);
              break;
            case "Skills":
              scrollToSection(skillsKey);
              break;
          }
        },
      ),
      body: HomeBody(
        aboutKey: aboutKey,
        contactKey: contactKey,
        homeKey: homeKey,
        projectsKey: projectsKey,
        skillsKey: skillsKey,
      ),
    );
  }
}
