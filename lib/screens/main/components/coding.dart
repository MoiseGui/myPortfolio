import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "TypeScript",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.90,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.72,
          label: "Dart",
        ),
      ],
    );
  }
}
