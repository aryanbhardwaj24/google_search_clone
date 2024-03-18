import 'package:flutter/material.dart';
import 'package:google_search_clone/widgets/search_header.dart';
import 'package:google_search_clone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Web Header
            SearchHeader(),
            //tabs for images, news, ...etc.
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchTabs(),
            ),
            //search results (including the time taken to fetch the results)
            //pagination buttons
          ],
        ),
      ),
    );
  }
}
