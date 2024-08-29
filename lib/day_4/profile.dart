import 'package:first_app/day_4/constant/colors.dart';
import 'package:first_app/day_4/constant/strings.dart';
import 'package:first_app/day_4/item_view/profile_item_view/profile_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaddingSizeBoxRowColumn extends StatelessWidget {
  const PaddingSizeBoxRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.navigate_before,
            size: 40.0,
            color: kPrimaryIconColor,
          ),
        ),
        title: const Text(
          kProfileText,
          style: TextStyle(color: kSecondaryTextColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: kPrimaryIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: kPrimaryIconColor,
            ),
          ),
        ],
        centerTitle: false,
        backgroundColor: kSecondaryColor,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [CircleAvatarImageItemView(), InputLayerItemView()],
        ),
      ),
    );
  }
}
