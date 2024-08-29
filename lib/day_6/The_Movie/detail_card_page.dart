import 'package:first_app/day_6/The_Movie/homepage.dart';
import 'package:first_app/day_6/The_Movie/item_view/list_view_cached_network_image.dart';
import 'package:first_app/day_6/The_Movie/item_view/list_view_detail_card_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailCardPage extends StatefulWidget {
  DetailCardPage({super.key});

  @override
  State<DetailCardPage> createState() => _DetailCardPageState();
}

class _DetailCardPageState extends State<DetailCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            expandedHeight: 450.0,
            leading: IconButton(
              style: IconButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(25, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  backgroundColor: const Color.fromARGB(255, 245, 128, 85)),
              splashRadius: 30.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TheMovieDB()),
                );
              },
              iconSize: 25.0,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              expandedTitleScale: 1.5,
              title: const Text(
                "Flutter Data",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              background: Stack(
                children: [
                  SizedBox(
                    height: 480.0,
                    child: Image.asset(
                      'assets/1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Color.fromARGB(255, 19, 18, 18)
                          ]),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Mystery | Thriller | Science Fiction | 1h34m",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 850,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Story line",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "A widget for Flutter that displays a placeholder widget while a specified image loads, then cross-fades to the loaded image. Also handles.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Star Cast",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    //new item
                    SizedBox(
                      height: 10,
                    ),
                    ListViewDetailCardPage(),

                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Talent Squad",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    //new item
                    SizedBox(
                      height: 10,
                    ),
                    ListViewDetailCardPage(),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Production Company",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    //new item
                    SizedBox(
                      height: 10,
                    ),
                    ListViewDetailCardPage(
                      sizedHeight: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Recommended",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),

                    SizedBox(
                      height: 8.0,
                    ),
                    ListViewCachedNetworkImage(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
