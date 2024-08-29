import 'package:first_app/day_6/The_Movie/reusable_widgets/text_button.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewTexButton extends StatelessWidget {
  const SingleChildScrollViewTexButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TextButtons(
            buttonText: 'Adventure',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Fantasy',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Animation',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Drama',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Horror',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Musicals',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Mystery',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Romance',
          ),
          SizedBox(
            width: 5,
          ),
          TextButtons(
            buttonText: 'Sports',
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}
