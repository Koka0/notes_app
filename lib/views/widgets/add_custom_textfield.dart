import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

class AddCustomTextField extends StatelessWidget {
  const AddCustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: KprimaryColor),
        border: buildInputBorder(),
        enabledBorder: buildInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
