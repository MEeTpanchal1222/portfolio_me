import 'package:flutter/material.dart';

import '../../../Components/AnimatedCircularProgessIndicator.dart';
import '../../../constants.dart';
class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Row(
          children: [
            Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.88,
                  label: "Flutter",
                )),
            SizedBox(width: defaultPadding,),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.92,
                  label: "Dart",
                )),
            SizedBox(width: defaultPadding,),
            Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.97,
                  label: "C++",
                )),
          ],
        )
      ],
    );
  }
}