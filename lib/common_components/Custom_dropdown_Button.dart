import 'package:egytologia/public/constance.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    this.dropdownValues,
    this.onChanged,
    this.text,
  });

  final List<String> dropdownValues;
  final Function onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        border: Border.all(
            color: primaryColor, style: BorderStyle.solid, width: 1.0),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            iconEnabledColor: primaryColor,

            iconSize: 40,
            hint: Text(text),

            items: dropdownValues
                .map((value) => DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    ))
                .toList(),
            onChanged: onChanged,
            isExpanded: true,

            //  value: dropdownValues.first,
          ),
        ),
      ),
    );
  }
}
