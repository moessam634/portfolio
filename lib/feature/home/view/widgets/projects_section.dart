import 'package:flutter/material.dart';
import 'package:portfolio/feature/home/model/models/projects_model.dart';
import 'package:portfolio/feature/home/view/widgets/custom_project_card.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/helper/responsive_helper.dart';
import '../../../../core/utils/portfolio_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final projects = PortfolioViewModel().developmentProjectsModels;

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
          _buildProjectSection(
            context,
            "Latest Projects",
            projects,
            isMobile,
          ),
        ],
      ),
    );
  }

  Widget _buildProjectSection(
    BuildContext context,
    String title,
    List<ProjectsModel> projects,
    bool isMobile,
  ) {
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
                        .map((project) => Padding(
                              padding: EdgeInsets.only(bottom: 16),
                              child: CustomProjectCard(
                                title: project.title,
                                description: project.description,
                                image: project.imageUrl,
                                onTap: () async {
                                  final uri = Uri.parse(project.link);
                                  if (await canLaunchUrl(uri)) {
                                    await launchUrl(uri,
                                        mode: LaunchMode.externalApplication);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Could not launch ${project.link}')),
                                    );
                                  }
                                },
                              ),
                            ))
                        .toList(),
                  )
                : Row(
                    children: projects
                        .map((project) => Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      right: projects.last == project ? 0 : 16),
                                  child: CustomProjectCard(
                                    title: project.title,
                                    description: project.description,
                                    image: project.imageUrl,
                                    onTap: () async {
                                      final uri = Uri.parse(project.link);
                                      if (await canLaunchUrl(uri)) {
                                        await launchUrl(uri,
                                            mode:
                                                LaunchMode.externalApplication);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  'Could not launch ${project.link}')),
                                        );
                                      }
                                    },
                                  )),
                            ))
                        .toList(),
                  ),
          ],
        ),
      ),
    );
  }
}
