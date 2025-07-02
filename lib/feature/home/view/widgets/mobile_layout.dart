import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/widgets/custom_contact_icon.dart';
import '../../../../core/styles/app_images.dart';
import '../../../../core/theme/contact_icon_theme_extension.dart';
import '../../../../core/utils/url_utils/url_utils.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final contactColors = Theme.of(context).extension<ContactIconColors>()!;
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).textTheme.displayMedium!.color!),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppImages.portfolioImage2),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 32),
        Text(
          "Hello! I Am",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.grey[600],
              ),
        ),
        SizedBox(height: 16),
        Text(
          "Mohamed Essam",
          style: Theme.of(context).textTheme.displayMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 24),
        Text(
          "Professional Flutter Developer specializing in crafting beautiful, high-performance mobile apps.",
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            CustomContactIcon(
              icon: FontAwesomeIcons.linkedin,
              color: contactColors.linkedin,
              onPressed: () {
                UrlUtils.launchExternalUrl(
                    "https://www.linkedin.com/in/mohamed-essam-b81b5b21b");
              },
            ),
            CustomContactIcon(
              icon: FontAwesomeIcons.github,
              color: contactColors.github,
              onPressed: () {
                UrlUtils.launchExternalUrl("https://github.com/moessam634");
              },
            ),
            CustomContactIcon(
              color: contactColors.email,
              icon: Icons.email,
              onPressed: () {
                UrlUtils.launchEmail("mohamedessam122002@gmail.com");
              },
            ),
            CustomContactIcon(
              color: contactColors.whatsapp,
              icon: FontAwesomeIcons.whatsapp,
              onPressed: () {
                UrlUtils.launchWhatsApp(
                    phoneNumber: "201062468772", message: "Hello!");
              },
            ),
          ],
        ),
      ],
    );
  }
}
