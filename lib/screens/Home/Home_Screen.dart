import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/main/main_Screen.dart';
import 'Components/HighLight_Info.dart';
import 'Components/Home_banner.dart';
import 'Components/My_Project.dart';
import 'Components/recommendationn.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      Home_Banner(),
      High_Light_info(),
      MyProject(),
      Recommendations(),
    ]);
  }
}




