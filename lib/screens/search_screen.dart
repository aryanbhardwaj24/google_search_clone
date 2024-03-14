import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Web Header
            //tabs for images, news, ...etc.
            //search results (including the time taken to fetch the results)
            //pagination buttons
          ],
        ),
      ),
    );
  }
}
