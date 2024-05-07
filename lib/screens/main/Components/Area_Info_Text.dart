import 'package:flutter/material.dart';

import '../../../constants.dart';


class Area_Info_Text extends StatelessWidget {
  const Area_Info_Text({
    super.key,
    this.text,
    this.title,
  });

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}