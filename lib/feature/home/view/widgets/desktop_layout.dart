import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/styles/app_images.dart';
import '../../../../core/theme/contact_icon_theme_extension.dart';
import '../../../../core/utils/url_utils.dart';
import '../../../../core/widgets/custom_contact_icon.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final contactColors = Theme.of(context).extension<ContactIconColors>()!;
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello! I Am",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              SizedBox(height: 16,),
              Text(
                "Mohamed Essam",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 24),
              Text(
                "Professional Flutter Developer specializing in crafting beautiful, high-performance mobile apps.",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 60),
              Row(
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
                      UrlUtils.launchWhatsApp(phoneNumber: "201062468772",message: "Hello!");

                    },
                  ),
                ],
              ),

            ],
          ),
        ),
        SizedBox(width: 48),
        Expanded(
          flex: 1,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).textTheme.displayMedium!.color!),
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage(AppImages.portfolioImage2),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
