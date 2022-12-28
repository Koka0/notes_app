import 'package:flutter/material.dart';

class CustomIconBar extends StatelessWidget {
  final IconData icon;

  const CustomIconBar({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        onPressed: () {
          print('You press Search');
        },
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
