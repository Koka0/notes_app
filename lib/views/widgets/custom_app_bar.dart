import 'package:flutter/material.dart';

import 'custom_icon_bar.dart';

class CustomAppBar extends StatelessWidget {
  final IconData icon;
  final String title;

  const CustomAppBar({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        CustomIconBar(
          icon: icon,
        ),
      ],
    );
  }
}
