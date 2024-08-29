import 'package:first_app/day_6/The_Movie/search_page.dart';
import 'package:flutter/material.dart';

class SearchButtonAndContainer extends StatelessWidget {
  final bool searchPage;
  const SearchButtonAndContainer({super.key, this.searchPage = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        searchPage
            ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: const [
                    BoxShadow(color: Color.fromARGB(255, 43, 42, 42)),
                  ],
                ),
                width: 260.0,
                height: 50.0,
                child: const Padding(
                    padding: EdgeInsets.only(top: 13.0, left: 10.0),
                    child: Text(
                      "Search movies...",
                      style: TextStyle(
                          color: Color.fromARGB(96, 185, 184, 184),
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    )),
              )
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17.0),
                  boxShadow: const [
                    BoxShadow(color: Color.fromARGB(255, 43, 42, 42)),
                  ],
                ),
                width: 260.0,
                height: 50.0,
                child: const TextField(
                  style: TextStyle(
                      color: Color.fromARGB(96, 185, 184, 184),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 43, 42, 42), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(17.0)),
                    ),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(96, 185, 184, 184),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700),
                    hintText: "Search movies ...",
                  ),
                ),
              ),
        const SizedBox(
          width: 15.0,
        ),
        TextButton(
          style: TextButton.styleFrom(
              elevation: 0,
              minimumSize: const Size(20, 45),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: const Color.fromARGB(255, 245, 128, 85)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          },
          child: const Icon(
            Icons.search,
            color: Color.fromARGB(255, 223, 222, 222),
          ),
        ),
      ],
    );
  }
}
