import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_helper.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: isMobile ? 40 : 80,
      ),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 24 : 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Me",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: 24),
              Text(
                "Hi, I'm Mohamed Essam, a passionate Flutter developer dedicated to building beautiful, robust, and user-friendly mobile applications. With a strong background in Dart and cross-platform development, I enjoy turning ideas into polished products that delight users.I have experience working on diverse projects, from business apps to creative tools, always focusing on clean code and responsive design. My goal is to create apps that not only work seamlessly across platforms but also feel native and intuitive. I'm always exploring new Flutter features and staying up-to-date with the latest mobile trends to deliver the best possible solutions.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
