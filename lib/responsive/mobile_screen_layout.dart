import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_search_clone/colors.dart';
import 'package:google_search_clone/widgets/mobile/mobile_footer.dart';
import 'package:google_search_clone/widgets/search.dart';
import 'package:google_search_clone/widgets/translation_buttons.dart';
import 'package:google_search_clone/widgets/search_buttons.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: SizedBox(
          width: size.width * 0.38,
          child: const DefaultTabController(
            length: 2,
            child: TabBar(
              labelColor: blueColor,
              unselectedLabelColor: Colors.white,
              indicatorColor: blueColor,
              tabs: [
                Tab(
                  text: 'All',
                ),
                Tab(
                  text: 'Images',
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0).copyWith(
              right: 10.0,
            ),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(),
                    SizedBox(
                      height: 20,
                    ),
                    SearchButtons(),
                    SizedBox(
                      height: 20,
                    ),
                    TranslationButtons(),
                  ],
                ),
                MobileFooter(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
