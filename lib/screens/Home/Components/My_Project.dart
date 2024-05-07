import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import 'Projectcard.dart';

class MyProject extends StatelessWidget {
  const MyProject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Project',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: Project_Grid_View(crossAxisCount: 1,childAspectRatio: 1.7,),
          desktop: Project_Grid_View(),
          tablet: Project_Grid_View(childAspectRatio: 1.1,),
          mobileLarge: Project_Grid_View(crossAxisCount: 2,),
        )
      ],
    );
  }
}

class Project_Grid_View extends StatelessWidget {
  const Project_Grid_View({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => Projectcard(
        project: demo_projects[index],
      ),
    );
  }
}
