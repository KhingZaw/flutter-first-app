import 'package:first_app/day_6/The_Movie/homepage.dart';
import 'package:first_app/day_6/The_Movie/item_view/list_view_cached_network_image.dart';
import 'package:first_app/day_6/The_Movie/item_view/more_information_row.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: true,
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
            expandedHeight: 450.0,
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
                      "Biography",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "A widget for Flutter that displays a placeholder widget while a specified image loads, then cross-fades to the loaded image. Also handles progress and errors. It uses Image.opacity when appropriate for improved performance.A widget for Flutter that displays a placeholder widget while a specified image loads, then cross-fades to the loaded image. Also handles progress and errors. It uses Image.opacity when appropriate for improved performance.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "More Information",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MoreInformationRow(
                            label: "Place Of Birth",
                            value: "Coatzacoalcos,\nVeracruz, Mexico"),
                        SizedBox(
                          height: 10.0,
                        ),
                        MoreInformationRow(
                            label: "BirthDay", value: "1966-09-02"),
                        SizedBox(
                          height: 10.0,
                        ),
                        MoreInformationRow(label: "DeadDay", value: "-"),
                        SizedBox(
                          height: 10.0,
                        ),
                        MoreInformationRow(label: "Gender", value: "Female"),
                        SizedBox(
                          height: 10.0,
                        ),
                        MoreInformationRow(
                            label: "Popularity", value: "83.334"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Known For",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
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
