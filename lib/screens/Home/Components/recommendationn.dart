import 'package:flutter/material.dart';
import 'package:portfolio_website/models/Recommendation.dart';
import '../../../constants.dart';
import 'Recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        'Recommendation',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      SizedBox(
        height: defaultPadding,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              demo_recommendations.length,
                  (index) => Recommendationcard(recommendation: demo_recommendations[index],
              )),
        ),
      ),
        ],
      ),
    );
  }
}