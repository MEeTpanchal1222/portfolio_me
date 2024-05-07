import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';

import '../../../Components/Animated_Coiunter.dart';
import '../../../constants.dart';
import 'High_Light.dart';

class High_Light_info extends StatelessWidget {
  const High_Light_info({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlights(counter: AnimatedCounter(
                value: 119,
                text: "k+",
              ),
                label: 'Subscribers',),

              Highlights(counter: AnimatedCounter(
                value: 40,
                text: "+",
              ),
                label: 'Videos',),
            ],
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Highlights(counter: AnimatedCounter(
                 value: 39,
                 text: "+",
               ),
                 label: 'GitHub Projects',),

               Highlights(counter: AnimatedCounter(
                 value: 10,
                 text: "k+",
               ),
                 label: 'Stars',),
             ],
          )

        ],
      ) : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlights(counter: AnimatedCounter(
            value: 119,
            text: "k+",
          ),
            label: 'Subscribers',),

          Highlights(counter: AnimatedCounter(
            value: 40,
            text: "+",
          ),
            label: 'Videos',),

          Highlights(counter: AnimatedCounter(
            value: 39,
            text: "+",
          ),
            label: 'GitHub Projects',),

          Highlights(counter: AnimatedCounter(
            value: 10,
            text: "k+",
          ),
            label: 'Stars',),
        ],
      ),
    );
  }
}