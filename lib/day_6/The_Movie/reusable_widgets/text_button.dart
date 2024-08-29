import 'package:first_app/day_6/The_Movie/constant/colors.dart';
import 'package:flutter/material.dart';

class TextButtons extends StatefulWidget {
  const TextButtons({
    super.key,
    required this.buttonText,
  });
  final String buttonText;

  @override
  State<TextButtons> createState() => _TextButtonsState();
}

class _TextButtonsState extends State<TextButtons> {
  Color _buttonColor = kBackgroundcolor;

  void _changeColor() {
    setState(() {
      _buttonColor =
          _buttonColor == kBackgroundcolor ? kButtoncolor : kBackgroundcolor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: _buttonColor,
      ),
      onPressed: _changeColor,
      child: Text(
        widget.buttonText,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
