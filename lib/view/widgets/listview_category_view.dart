import 'package:flutter/material.dart';

import 'custom_text.dart';

class ListViewCategory extends StatelessWidget {
  final String text;
  final Image image;
  ListViewCategory({this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            elevation: 3,
            color: Colors.white,
            child: Container(
                height: 180,
                width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      child: image,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                      text: text,
                      alignment: Alignment.center,
                      fontSize: 20,
                      fontweight: FontWeight.bold,
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
