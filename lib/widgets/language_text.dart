import 'package:flutter/material.dart';
import 'package:google_search_clone/colors.dart';

class LanguageText extends StatelessWidget {
  final String title;
  const LanguageText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 0,
      ),
      child: InkWell(
        onTap: () {},
        child: Text(
          title,
          style: const TextStyle(
            color: blueColor,
          ),
        ),
      ),
    );
  }
}
