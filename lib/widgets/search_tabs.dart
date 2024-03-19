import 'package:flutter/material.dart';
import 'package:google_search_clone/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            isActive: true,
            title: 'All',
            icon: Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            title: 'Images',
            icon: Icons.image,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            title: 'Map',
            icon: Icons.map,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            title: 'News',
            icon: Icons.newspaper,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            title: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            title: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
