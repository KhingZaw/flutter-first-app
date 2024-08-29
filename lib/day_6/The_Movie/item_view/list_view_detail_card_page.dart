import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewDetailCardPage extends StatefulWidget {
  final bool sizedHeight;
  const ListViewDetailCardPage({
    super.key,
    this.sizedHeight = true,
  });

  @override
  State<ListViewDetailCardPage> createState() => _ListViewDetailCardPageState();
}

class _ListViewDetailCardPageState extends State<ListViewDetailCardPage> {
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
      height: widget.sizedHeight ? 60.0 : 100.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl: imageUrls[index],
              imageBuilder: (context, imageProvider) => Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: SizedBox(
                    child: widget.sizedHeight
                        ? Row(
                            children: [
                              Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Actor",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Actor kdoqljoqrj",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 75.0,
                                width: 75.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text(
                                "Actor next fit",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
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
