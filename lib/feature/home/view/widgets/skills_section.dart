import 'package:flutter/material.dart';
import 'package:portfolio/feature/home/model/models/skills_model.dart';
import '../../../../core/helper/responsive_helper.dart';
import '../../../../core/utils/portfolio_utils.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = PortfolioViewModel().skills;

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
            "Skills & Technologies",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 32),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children:
                skills.map((skill) => _buildSkillCard(context, skill)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillCard(BuildContext context, SkillsModel skill) {
    return Container(
      width: ResponsiveHelper.isMobile(context) ? 100 : 120,
      height: ResponsiveHelper.isMobile(context) ? 100 : 120,
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(skill.iconData, size: 32, color: skill.color),
          SizedBox(height: 8),
          Text(
            skill.name,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
