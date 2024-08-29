import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_app/day_6/The_Movie/detail_page.dart';
import 'package:flutter/material.dart';

class CarouselSliderAndCachedNetworkImage extends StatefulWidget {
  final bool autoPlays;
  final bool textIcons;
  const CarouselSliderAndCachedNetworkImage(
      {super.key, this.autoPlays = true, this.textIcons = true});

  @override
  State<CarouselSliderAndCachedNetworkImage> createState() =>
      _CarouselSliderAndCachedNetworkImageState();
}

class _CarouselSliderAndCachedNetworkImageState
    extends State<CarouselSliderAndCachedNetworkImage> {
  final List<String> imgList = [
    'https://e0.pxfuel.com/wallpapers/738/16/desktop-wallpaper-katherine-langford-katherine-langford-hollywood-actress-thumbnail.jpg',
    'https://images.unsplash.com/photo-1723567685469-933243ddc2bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1723564608413-a840fce56bec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1723621129507-473662f46863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzN3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1723242015936-ab12ca2626b3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0N3x8fGVufDB8fHx8fA%3D%3D'
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 350,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: widget.autoPlays,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: imgList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailPage()),
                );
              },
              child: Stack(
                children: [
                  Container(
                    child: Center(
                      child: CachedNetworkImage(
                        imageUrl: i,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        placeholder: (context, url) => CachedNetworkImage(
                          imageUrl:
                              "https://th.bing.com/th/id/OIP._c_fb2mNC9o8apMvDgt4-AHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color.fromARGB(255, 19, 18, 18)
                          ]),
                    ),
                  ),
                  widget.textIcons
                      ? Center(
                          child: TextButton(
                            style: TextButton.styleFrom(
                                elevation: 0,
                                minimumSize: const Size(20, 45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                backgroundColor:
                                    const Color.fromARGB(255, 245, 128, 85)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailPage()),
                              );
                            },
                            child: const Icon(
                              Icons.play_arrow_outlined,
                              color: Color.fromARGB(255, 223, 222, 222),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
