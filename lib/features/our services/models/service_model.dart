import 'dart:ui';

class ServiceModel {
  final String title;
  final List<String> subPoints;
  final VoidCallback onTap;

  ServiceModel({
    required this.title,
    required this.subPoints,
    required this.onTap,
  });
}
