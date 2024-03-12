import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  final String title;
  const SearchButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 18,
          ),
        ),
      ),
      child: Text(title),
    );
  }
}
