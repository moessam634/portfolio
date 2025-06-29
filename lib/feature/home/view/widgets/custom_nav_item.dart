import 'package:flutter/material.dart';

class CustomNavItem extends StatelessWidget {
  const CustomNavItem({
    super.key,
    required this.title,
    required this.onNavItemSelected,
  });

  final String title;
  final void Function(String) onNavItemSelected;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onNavItemSelected(title),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}
