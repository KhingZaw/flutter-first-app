import 'package:first_app/day_6/The_Movie/homepage.dart';
import 'package:first_app/day_6/The_Movie/item_view/search_button_and_container.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 15.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TheMovieDB()),
                  );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Color.fromARGB(255, 245, 128, 85),
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          color: Color.fromARGB(255, 245, 128, 85),
                          fontSize: 18.0),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const SearchButtonAndContainer(
              searchPage: false,
            ),
          ],
        ),
      ),
    );
  }
}
