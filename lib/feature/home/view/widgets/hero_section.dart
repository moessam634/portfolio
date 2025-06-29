import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_helper.dart';
import 'desktop_layout.dart';
import 'mobile_layout.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 48,
        vertical: isMobile ? 40 : 80,
      ),
      child: isMobile ? MobileLayout() : DesktopLayout(),
    );
  }
}
