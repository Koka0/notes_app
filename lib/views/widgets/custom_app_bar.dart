import 'package:flutter/material.dart';

import 'custom_icon_bar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        CustomIconBar(),
      ],
    );
  }
}
