import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/helper/responsive_helper.dart';
import '../../../../core/theme/contact_icon_theme_extension.dart';
import '../../../../core/utils/url_utils.dart';
import '../../../../core/widgets/custom_contact_icon.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final contactColors = Theme.of(context).extension<ContactIconColors>()!;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: isMobile ? 40 : 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Me",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 32),
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
          // SizedBox(height: 48),
          // Text(
          //   "© 2024 Mokete Tyabekana. All rights reserved.",
          //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          //         color: Colors.grey[600],
          //       ),
          // ),
        ],
      ),
    );
  }
}
