import 'package:each_job/ui/job_page.dart';
import 'package:each_job/utils/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Each job',
      theme: AppThemes.commonTheme,
      home: const JobPage(),
    );
  }
}