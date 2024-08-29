import 'package:first_app/day_4/constant/colors.dart';
import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields(
      {super.key, required this.hintText, required this.labelText});
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: kSecondaryColor, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        hintStyle: const TextStyle(
            color: kTextHintColor, fontSize: 15.0, fontWeight: FontWeight.w700),
        labelStyle: const TextStyle(
          color: kPrimaryTextColor,
          fontSize: 15.0,
        ),
        hintText: hintText,
        labelText: labelText,
      ),
      obscureText: true,
    );
  }
}

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons(
      {super.key,
      required this.buttonName,
      this.backColor = false,
      this.textColor = false,
      this.isBorderSide = false});
  final String buttonName;
  final bool backColor;
  final bool textColor;
  final bool isBorderSide;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(330, 60),
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: (isBorderSide)
              ? const BorderSide(width: 2.0, color: kSecondaryColor)
              : BorderSide.none,
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: (backColor) ? kPrimaryColor : kSecondaryColor,
      ),
      onPressed: () {},
      child: Text(
        buttonName,
        style: TextStyle(
          color: (textColor) ? kSecondaryColor : kPrimaryColor,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
