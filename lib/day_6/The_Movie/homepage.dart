import 'package:first_app/day_6/The_Movie/constant/colors.dart';
import 'package:first_app/day_6/The_Movie/item_view/carousel_slider_and_cached_network_image.dart';
import 'package:first_app/day_6/The_Movie/item_view/list_view_cached_network_image.dart';
import 'package:first_app/day_6/The_Movie/item_view/search_button_and_container.dart';
import 'package:first_app/day_6/The_Movie/item_view/single_child_scroll_view_tex_button.dart';
import 'package:flutter/material.dart';

class TheMovieDB extends StatelessWidget {
  const TheMovieDB({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundcolor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(17.0, 50.0, 17.0, 0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchButtonAndContainer(),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollViewTexButton(),
              SizedBox(
                height: 20,
              ),
              CarouselSliderAndCachedNetworkImage(),
              SizedBox(
                height: 20,
              ),
              ListViewCachedNetworkImage(
                sizedHeight: false,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "You may like",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListViewCachedNetworkImage(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Popular",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListViewCachedNetworkImage(),
              SizedBox(
                height: 20,
              ),
              CarouselSliderAndCachedNetworkImage(
                autoPlays: false,
                textIcons: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
