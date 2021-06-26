import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';

class Custom_Drawer_Icons extends StatelessWidget {
  final String name;
  final String image;
  final Function onPressed;
  final Color colortext;

  Custom_Drawer_Icons({this.name, this.image, this.onPressed,this.colortext});

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Row(
          children: [
            IconButton(
              icon: Image.asset(image),
              onPressed: onPressed,
            ),
            CustomText(
              text: name,
              color: colortext,
              fontSize: 18,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ],
    );
  }
}
