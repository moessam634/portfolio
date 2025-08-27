import 'package:flutter/material.dart';


class ContactIconColors extends ThemeExtension<ContactIconColors> {
  const ContactIconColors({
    required this.linkedin,
    required this.github,
    required this.email,
    required this.whatsapp,
  });

  final Color linkedin;
  final Color github;
  final Color email;
  final Color whatsapp;

  @override
  ContactIconColors copyWith({
    Color? linkedin,
    Color? github,
    Color? email,
    Color? whatsapp,
  }) {
    return ContactIconColors(
      linkedin: linkedin ?? this.linkedin,
      github: github ?? this.github,
      email: email ?? this.email,
      whatsapp: whatsapp ?? this.whatsapp,
    );
  }

  @override
  ContactIconColors lerp(ThemeExtension<ContactIconColors>? other, double t) {
    if (other is! ContactIconColors) {
      return this;
    }
    return ContactIconColors(
      linkedin: Color.lerp(linkedin, other.linkedin, t)!,
      github: Color.lerp(github, other.github, t)!,
      email: Color.lerp(email, other.email, t)!,
      whatsapp: Color.lerp(whatsapp, other.whatsapp, t)!,
    );
  }
}