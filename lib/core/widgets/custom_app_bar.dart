import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/utils/url_utils/url_utils.dart';
import 'package:portfolio/feature/home/view/widgets/custom_nav_item.dart';
import 'package:portfolio/feature/home/view/widgets/modal_bottom_sheet.dart';
import '../helper/responsive_helper.dart';
import '../styles/app_files.dart';
import '../theme/theme_cubit/theme_cubit.dart';
import '../theme/theme_cubit/theme_state.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.onNavItemSelected,
  });

  final Function(String section) onNavItemSelected;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final isDarkMode = state.isDarkMode;
        return AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.isMobile(context) ? 16 : 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //resume button
                ElevatedButton(
                  onPressed: () {
                    UrlUtils.openInNewTab(AppFiles.resume);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDarkMode ? Colors.white : Colors.black,
                    foregroundColor: isDarkMode ? Colors.black : Colors.white,
                  ),
                  child: Text("Download Resume"),
                ),
                if (ResponsiveHelper.isDesktop(context))
                  Row(
                    spacing: 32,
                    children: [
                      CustomNavItem(
                        title: "Home",
                        onNavItemSelected: (_) => onNavItemSelected("Home"),
                      ),
                      CustomNavItem(
                        title: "About",
                        onNavItemSelected: (_) => onNavItemSelected("About"),
                      ),
                      CustomNavItem(
                        title: "Skills",
                        onNavItemSelected: (_) => onNavItemSelected("Skills"),
                      ),
                      CustomNavItem(
                        title: "Projects",
                        onNavItemSelected: (_) => onNavItemSelected("Projects"),
                      ),
                      CustomNavItem(
                        title: "Contact",
                        onNavItemSelected: (_) => onNavItemSelected("Contact"),
                      ),
                      Switch(
                        value: isDarkMode,
                        onChanged: (_) {
                          context.read<ThemeCubit>().toggleTheme();
                        },
                        activeColor: Colors.deepPurple,
                        inactiveThumbColor: Colors.white,
                      )
                    ],
                  )
                else
                  Row(
                    children: [
                      Switch(
                        value: isDarkMode,
                        onChanged: (_) {
                          context.read<ThemeCubit>().toggleTheme();
                        },
                        activeColor: Colors.deepPurple,
                        inactiveThumbColor: Colors.white,
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () => showModalBottomSheet(
                          context: context,
                          builder: (context) => ModalBottomSheet(
                            onNavItemSelected: onNavItemSelected,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
