import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/styles/app_images.dart';
import 'package:portfolio/feature/home/model/models/certification_model.dart';
import 'package:portfolio/feature/home/model/models/education_model.dart';
import '../../feature/home/model/models/projects_model.dart';
import '../../feature/home/model/models/skills_model.dart';

class PortfolioViewModel {
  final List<ProjectsModel> _developmentProjectsModels = [
    ProjectsModel(
      link: "https://github.com/moessam634/angelina_app",
      title: "Angelina App",
      category: "Development",
      imageUrl: AppImages.angelinaImage,
      description:
          "Angelina is a modern beauty e-commerce mobile application designed to offer a seamless shopping experience for skincare and cosmetic products. Built with Flutter, the app supports responsive design, intuitive navigation, and full Arabic localization.",
    ),
    ProjectsModel(
        link: "https://github.com/moessam634/zbooma_app",
        title: "ZBOOMA App",
        category: "Development",
        imageUrl: AppImages.zboomaImage,
        description:
            "ZBOOMA is a visually rich Arabic mobile app designed for digital business onboarding and service management.It features a dark neon-themed UI, interactive navigation, and personalized onboarding workflows.The app blends futuristic design with clarity, offering services like branding, SEO, and social media management."),
    ProjectsModel(
      link: "https://github.com/moessam634/furniture_app",
      title: "Furniture App",
      category: "Development",
      imageUrl: AppImages.furnitureImage,
      description:
          "modern mobile application designed to enhance the online furniture shopping experience. Built with user-centric UI principles, this app combines elegant design with intuitive navigation to allow users to browse, favorite, and purchase home furnishings with ease.",
    ),
  ];

  final List<SkillsModel> _skills = [
    SkillsModel(
        name: "Flutter",
        iconData: FontAwesomeIcons.flutter,
        color: Colors.blue),
    SkillsModel(
        name: "Dart", iconData: FontAwesomeIcons.code, color: Colors.blue),
    SkillsModel(
        name: "Bloc / Cubit",
        iconData: FontAwesomeIcons.cogs,
        color: Colors.deepPurple),
    SkillsModel(
        name: "Firebase",
        iconData: FontAwesomeIcons.fire,
        color: Colors.orange),
    SkillsModel(
        name: "REST API",
        iconData: FontAwesomeIcons.link,
        color: Colors.indigo),
    SkillsModel(
        name: "Git / GitHub",
        iconData: FontAwesomeIcons.github,
        color: Colors.grey),
    SkillsModel(
        name: "Database",
        iconData: FontAwesomeIcons.database,
        color: Colors.brown),
    SkillsModel(
        name: "Figma", iconData: FontAwesomeIcons.figma, color: Colors.teal),
    SkillsModel(
        name: "Android Studio",
        iconData: FontAwesomeIcons.android,
        color: Colors.blueAccent),
  ];
  final List<EducationModel> _education = [
    EducationModel(
      degree: "Diploma In Information Technology",
      institution: "Central University Of Technology",
      period: "2018-2020",
    ),
    EducationModel(
      degree: "National Senior Certificate (Grade 12/Matric)",
      institution: "Thabang High School",
      period: "2012-2016",
    ),
  ];

  final List<CertificationModel> _certifications = [
    CertificationModel(
        title: "Front-End Web Development Program (ALX Africa)", issuer: "ALX"),
    CertificationModel(title: "Google UX Design Certificate", issuer: "Google"),
    CertificationModel(
        title: "Meta Programming Foundations (JavaScript)", issuer: "Meta"),
    CertificationModel(
        title: "Meta Frontend Developer Professional", issuer: "Meta"),
    CertificationModel(
        title: "Google Digital Marketing & E-commerce", issuer: "Google"),
    CertificationModel(
        title: "Professional Foundations (ALX Africa)", issuer: "ALX"),
  ];

  List<ProjectsModel> get developmentProjectsModels =>
      _developmentProjectsModels;

  List<SkillsModel> get skills => _skills;

  List<EducationModel> get education => _education;

  List<CertificationModel> get certifications => _certifications;
}
