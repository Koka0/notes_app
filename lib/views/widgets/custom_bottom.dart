import 'package:flutter/material.dart';

import '../../color/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: KprimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
