import 'package:flutter/material.dart';

class CustomContactIcon extends StatelessWidget {
  const CustomContactIcon({super.key, required this.icon, this.onPressed, this.color});

  final IconData icon;
  final VoidCallback? onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: Icon(icon),
        color: color,
        iconSize: 24,
        onPressed: onPressed,
      ),
    );
  }
}
