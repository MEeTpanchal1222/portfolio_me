import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';
import '../../../constants.dart';


class Home_Banner extends StatelessWidget {
  const Home_Banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover my Amazing \nArt Space!',
                  style: Responsive.isDesktop(context)
                      ? Theme
                      .of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white)
                      :
                  Theme
                      .of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),

                if(Responsive.isMobileLarge(context))
                  SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedtext(),
                SizedBox(height: defaultPadding,),
                if(!Responsive.isMobileLarge(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: primaryColor),
                      child: Text(
                        'EXPLORE NOW',
                        style: TextStyle(color: darkColor),
                      ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedtext extends StatelessWidget {
  const MyBuildAnimatedtext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme
          .of(context)
          .textTheme
          .titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context))
            FlutterCodedText()
          ,
          if(!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          Text('I build '),
          Responsive.isMobile(context)
              ? Expanded(child: Animated_Text())
              : Animated_Text(),

          if(!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if(!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ]
        ,
      )
      ,
    );
  }
}

class Animated_Text extends StatelessWidget {
  const Animated_Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("responsive web and mobile app.",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("complete e-commerce app UI",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Chat app with dark and light theme",
          speed: Duration(milliseconds: 60)),
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(
        text: "Flutter",
        style: TextStyle(color: primaryColor),
      ),
      TextSpan(text: ">"),
    ]));
  }
}