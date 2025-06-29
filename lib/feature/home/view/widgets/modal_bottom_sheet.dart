import 'package:flutter/material.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key, required this.onNavItemSelected});
  final Function(String section) onNavItemSelected;


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                  onNavItemSelected("Home");
                }),
            ListTile(
                title: Text("About"),
                onTap: () {
                  Navigator.pop(context);
                  onNavItemSelected("About");
                }),
            ListTile(
                title: Text("Skills"),
                onTap: () {
                  Navigator.pop(context);
                  onNavItemSelected("Skills");
                }),
            ListTile(
                title: Text("Projects"),
                onTap: () {
                  Navigator.pop(context);
                  onNavItemSelected("Projects");
                }),
            ListTile(
                title: Text("Contact"),
                onTap: () {
                  Navigator.pop(context);
                  onNavItemSelected("Contact");
                }),
          ],
        ),
    );
  }
}
