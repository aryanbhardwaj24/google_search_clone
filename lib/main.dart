import 'package:flutter/material.dart';
import 'package:google_search_clone/responsive/responsive_layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayoutScreen(
          mobileScreenLayout: mobileScreenLayout,
          webScreenLayout: webScreenLayout),
    );
  }
}
