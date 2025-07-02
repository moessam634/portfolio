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
  int? selectedCardIndex;
  bool _isCardTouched = false; // Track if card was touched

  void _clearSelectedCard() {
    if (selectedCardIndex != null) {
      setState(() {
        selectedCardIndex = null;
      });
    }
  }

  void _setSelectedCard(int index) {
    _isCardTouched = true; // Mark that a card was touched
    setState(() {
      selectedCardIndex = index;
    });
    // Reset the flag after a short delay
    Future.delayed(Duration(milliseconds: 50), () {
      _isCardTouched = false;
    });
  }

  void _onPointerDown(PointerDownEvent event) {
    // Only clear if a card wasn't just touched
    if (!_isCardTouched) {
      _clearSelectedCard();
    }
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      behavior: HitTestBehavior.translucent, // Changed from opaque
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            HeroSection(key: widget.homeKey),
            AboutSection(key: widget.aboutKey),
            SkillsSection(key: widget.skillsKey),
            ProjectsSection(
              key: widget.projectsKey,
              selectedCardIndex: selectedCardIndex,
              onCardSelected: _setSelectedCard,
              onCardCleared: _clearSelectedCard,
            ),
            ContactSection(key: widget.contactKey),
          ],
        ),
      ),
    );
  }
}