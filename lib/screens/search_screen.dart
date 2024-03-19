import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/services/api_service.dart';
import 'package:google_search_clone/widgets/search_footer.dart';
import 'package:google_search_clone/widgets/search_header.dart';
import 'package:google_search_clone/widgets/search_result_component.dart';
import 'package:google_search_clone/widgets/search_tabs.dart';

class SearchScreen extends StatelessWidget {
  final String searchQuery;
  final String start;

  const SearchScreen({
    super.key,
    required this.searchQuery,
    required this.start,
  });

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
            FutureBuilder(
              future: ApiService().fetchData(
                queryTerm: searchQuery,
                start: start,
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 150,
                          top: 12,
                        ),
                        child: Text(
                          'About ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']} seconds)',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color(0xFF70757a),
                          ),
                        ),
                      ),
                      ListView.builder(
                        itemCount: snapshot.data?['items'].length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 150,
                              top: 10,
                            ),
                            child: SearchResultComponent(
                              link: snapshot.data?['items'][index]
                                  ['formattedUrl'],
                              linkToGo: snapshot.data?['items'][index]['link'],
                              text: snapshot.data?['items'][index]['title'],
                              description: snapshot.data?['items'][index]
                                  ['snippet'],
                            ),
                          );
                        },
                      ),
                      //pagination buttons
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                if (start != '0') {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => SearchScreen(
                                        searchQuery: searchQuery,
                                        start:
                                            (int.parse(start) - 10).toString(),
                                      ),
                                    ),
                                  );
                                }
                              },
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
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SearchScreen(
                                      searchQuery: searchQuery,
                                      start: (int.parse(start) + 10).toString(),
                                    ),
                                  ),
                                );
                              },
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
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
