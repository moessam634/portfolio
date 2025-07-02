import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/url_utils/url_utils.dart';
import '../../../../core/helper/responsive_helper.dart';
import '../../../../core/utils/portfolio_utils.dart';
import 'custom_project_card.dart';

class ProjectSectionLayout extends StatelessWidget {
  const ProjectSectionLayout({
    super.key,
    this.selectedCardIndex,
    this.onCardSelected,
    this.onCardCleared,
  });

  final int? selectedCardIndex;
  final Function(int)? onCardSelected;
  final VoidCallback? onCardCleared;


  void _handleCardTouchDown(int index) {
    onCardSelected?.call(index);
  }

  void _handleCardHoverEnter(int index, BuildContext context) {
    if (!ResponsiveHelper.isMobile(context)) {
      onCardSelected?.call(index);
    }
  }

  void _handleCardHoverExit(BuildContext context) {
    if (!ResponsiveHelper.isMobile(context)) {
      onCardCleared?.call();
    }
  }

  void _handleCardTap(int index, String projectLink) {
    UrlUtils.launchExternalUrl(projectLink);
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final projects = PortfolioViewModel().developmentProjectsModels;
    final title = "Latest Projects";

    return Card(
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 16 : 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 24),
            isMobile
                ? Column(
              children: projects
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                var project = entry.value;
                return Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: CustomProjectCard(
                    title: project.title,
                    description: project.description,
                    image: project.imageUrl,
                    isSelected: selectedCardIndex == index,
                    onTouchDown: () => _handleCardTouchDown(index),
                    onHoverEnter: () => _handleCardHoverEnter(index, context),
                    onHoverExit: () => _handleCardHoverExit(context),
                    onTap: () => _handleCardTap(index, project.link),
                  ),
                );
              })
                  .toList(),
            )
                : Row(
              children: projects
                  .asMap()
                  .entries
                  .map((entry) {
                int index = entry.key;
                var project = entry.value;
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: projects.last == project ? 0 : 16),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: CustomProjectCard(
                        title: project.title,
                        description: project.description,
                        image: project.imageUrl,
                        isSelected: selectedCardIndex == index,
                        onTouchDown: () => _handleCardTouchDown(index),
                        onHoverEnter: () => _handleCardHoverEnter(index, context),
                        onHoverExit: () => _handleCardHoverExit(context),
                        onTap: () => _handleCardTap(index, project.link),
                      ),
                    ),
                  ),
                );
              })
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}