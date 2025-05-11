import 'package:flutter/material.dart';

class EachJobLogo extends StatelessWidget {
  const EachJobLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      fit: BoxFit.contain,
      'assets/img/each_job.png'
    );
  }
}
