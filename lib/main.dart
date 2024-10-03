import 'package:flutter/material.dart';
import 'package:work/Responsive_layout.dart';
import 'package:work/desktop.dart';
import 'package:work/homepage.dart';
import 'package:work/mobile.dart';
import 'package:work/tablet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobile: Mobile(),
        tablet: Tablet(),
        desktop: Desktop(),
      ),
    );
  }
}
