import 'package:flutter/material.dart';
import 'package:portfolio/feature/home/view/widgets/project_section_layout.dart';
import '../../../../core/helper/responsive_helper.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
    this.selectedCardIndex,
    this.onCardSelected,
    this.onCardCleared,
  });

  final int? selectedCardIndex;
  final Function(int)? onCardSelected;
  final VoidCallback? onCardCleared;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: isMobile ? 40 : 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 48),
          ProjectSectionLayout(
            selectedCardIndex: selectedCardIndex,
            onCardSelected: onCardSelected,
            onCardCleared: onCardCleared,
          ),
        ],
      ),
    );
  }
}