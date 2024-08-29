import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_app/day_6/The_Movie/detail_card_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewCachedNetworkImage extends StatefulWidget {
  final bool sizedHeight;
  const ListViewCachedNetworkImage({
    super.key,
    this.sizedHeight = true,
  });

  @override
  State<ListViewCachedNetworkImage> createState() =>
      _ListViewCachedNetworkImageState();
}

class _ListViewCachedNetworkImageState
    extends State<ListViewCachedNetworkImage> {
  final List<String> imageUrls = [
    'https://e0.pxfuel.com/wallpapers/738/16/desktop-wallpaper-katherine-langford-katherine-langford-hollywood-actress-thumbnail.jpg',
    'https://images.unsplash.com/photo-1723567685469-933243ddc2bd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1723564608413-a840fce56bec?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1723621129507-473662f46863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwzN3x8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1723242015936-ab12ca2626b3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0N3x8fGVufDB8fHx8fA%3D%3D'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (widget.sizedHeight) ? 200 : 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl: imageUrls[index],
              imageBuilder: (context, imageProvider) => Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailCardPage()),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 155.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 155.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Color.fromARGB(255, 19, 18, 18)
                              ]),
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 155.0,
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fast X",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_outline,
                                    color: Color.fromARGB(255, 189, 143, 6),
                                    size: 23.0,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "7.3",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 172, 172, 172),
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "1083 votes",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 172, 172, 172),
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              placeholder: (context, url) => CachedNetworkImage(
                imageUrl:
                    "https://th.bing.com/th/id/OIP._c_fb2mNC9o8apMvDgt4-AHaEK?w=300&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                imageBuilder: (context, imageProvider) => Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 170.0,
                    width: 155.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            );
          }),
    );
  }
}
