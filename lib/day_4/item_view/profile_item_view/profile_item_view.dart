import 'package:first_app/day_4/constant/colors.dart';
import 'package:first_app/day_4/constant/dimens.dart';
import 'package:first_app/day_4/constant/strings.dart';
import 'package:first_app/day_4/reusable_widgets/text_field%20_and_elevated_button.dart';
import 'package:flutter/material.dart';

class CircleAvatarImageItemView extends StatelessWidget {
  const CircleAvatarImageItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kCircleAvatarItemViewHeight,
      color: kSecondaryColor,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatarView(),
          CircleAvatarEditIconButtonView(),
        ],
      ),
    );
  }
}

class CircleAvatarView extends StatelessWidget {
  const CircleAvatarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: kSP60y),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/1.jpg"),
        radius: kCircleAvatarItemViewRadius,
      ),
    );
  }
}

class CircleAvatarEditIconButtonView extends StatelessWidget {
  const CircleAvatarEditIconButtonView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kCircleAvatarEditIconPadding),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.edit_document,
          color: kCircleAvatarEditIconColor,
        ),
      ),
    );
  }
}

class InputLayerItemView extends StatelessWidget {
  const InputLayerItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 0.0),
        child: Column(
          children: [
            Text(
              kProfileText,
              style: TextStyle(
                fontSize: kProFileTextSize,
                fontWeight: FontWeight.bold,
                color: kProfileTextColor,
              ),
            ),
            SizedBox(
              height: kSP35y,
            ),
            TextFields(
              hintText: kEmailAddersHint,
              labelText: kEmailAddersLabel,
            ),
            SizedBox(
              height: kSP30y,
            ),
            TextFields(
              hintText: kPasswordHint,
              labelText: kPasswordLabel,
            ),
            SizedBox(
              height: kSP30y,
            ),
            TextFields(
              hintText: kPasswordHint,
              labelText: kPasswordConfirmLabel,
            ),
            SizedBox(
              height: kSP35y,
            ),
            ElevatedButtons(
              buttonName: kLoginText,
            ),
            SizedBox(
              height: kSP70y,
            ),
            ElevatedButtons(
              buttonName: kBackText,
              backColor: true,
              textColor: true,
              isBorderSide: true,
            ),
          ],
        ),
      ),
    );
  }
}
