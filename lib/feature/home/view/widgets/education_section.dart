import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_helper.dart';
import '../../../../core/utils/portfolio_utils.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final portfolioViewModel = PortfolioViewModel();

    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : 48,
          vertical: isMobile ? 20 : 40,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isMobile) ...[
              Expanded(
                child: _buildEducationColumn(context, portfolioViewModel),
              ),
              SizedBox(width: 48),
              Expanded(
                child: _buildCertificationsColumn(context, portfolioViewModel),
              ),
            ] else
              Expanded(
                child: Column(
                  children: [
                    _buildEducationColumn(context, portfolioViewModel),
                    SizedBox(height: 32),
                    _buildCertificationsColumn(context, portfolioViewModel),
                  ],
                ),
              ),
          ],
        ));
  }

  Widget _buildEducationColumn(
      BuildContext context, PortfolioViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Education",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 16),
        ...viewModel.education.map((edu) => Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    edu.degree,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    edu.institution,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    edu.period,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildCertificationsColumn(
      BuildContext context, PortfolioViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Certifications & Courses",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 16),
        ...viewModel.certifications
            .map((cert) => Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 6,
                        height: 6,
                        margin: EdgeInsets.only(top: 8, right: 12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).textTheme.bodyLarge?.color,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          cert.title,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ))
            ,
      ],
    );
  }
}
