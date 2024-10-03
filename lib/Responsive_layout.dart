import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout(
      {super.key,
      required this.desktop,
      required this.mobile,
      required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 500) {
        return mobile;
      } else if (constrains.maxWidth < 500) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
