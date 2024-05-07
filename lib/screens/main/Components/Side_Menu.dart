import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website/constants.dart';

import 'Area_Info_Text.dart';
import 'Coding.dart';
import 'Knowledge.dart';
import 'My-Info.dart';
import 'Skills.dart';

Drawer Show_Menu(BuildContext context) {
  return Drawer(
    child: SafeArea(
      child: Column(
        children: [
          Myinfo(context),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Area_Info_Text(
                  title: "Residence",
                  text: "India",
                ),
                Area_Info_Text(
                  title: "City",
                  text: "Surat",
                ),
                Area_Info_Text(
                  title: "Age",
                  text: "19",
                ),
                Skills(),
                SizedBox(
                  height: defaultPadding,
                ),
                Coding(),
                Knowledge(),
                Divider(),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            'DOWNLOAD CV',
                            style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.titleLarge!.color,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding / 2,
                          ),
                          SvgPicture.asset("assets/icons/download.svg"),
                        ],
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(top: defaultPadding),
                  color: Color(0xFF24242E),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/linkedin.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/github.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/twitter.svg")),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/behance.svg")),
      
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    ),
  );
}
