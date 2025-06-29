import 'package:flutter/material.dart';
import 'package:portfolio/feature/home/view/widgets/projects_section.dart';
import 'package:portfolio/feature/home/view/widgets/skills_section.dart';
import 'about_section.dart';
import 'contact_section.dart';
import 'hero_section.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
    required this.homeKey,
    required this.aboutKey,
    required this.projectsKey,
    required this.contactKey,
    required this.skillsKey,
  });

  final Key homeKey;
  final Key aboutKey;
  final Key projectsKey;
  final Key contactKey;
  final Key skillsKey;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          HeroSection(key: widget.homeKey),
          AboutSection(key: widget.aboutKey),
          SkillsSection(key: widget.skillsKey),
          ProjectsSection(key: widget.projectsKey),
          ContactSection(key: widget.contactKey),
        ],
      ),
    );
  }
}
