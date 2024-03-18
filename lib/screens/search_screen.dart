import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/widgets/search_footer.dart';
import 'package:google_search_clone/widgets/search_header.dart';
import 'package:google_search_clone/widgets/search_tabs.dart';

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
            const SearchHeader(),
            //tabs for images, news, ...etc.
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchTabs(),
            ),
            const Divider(
              height: 0,
              thickness: 0.2,
            ),
            //search results (including the time taken to fetch the results)
            //pagination buttons
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      '< Prev',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Next >',
                      style: TextStyle(
                        fontSize: 15,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SearchFooter(),
          ],
        ),
      ),
    );
  }
}
