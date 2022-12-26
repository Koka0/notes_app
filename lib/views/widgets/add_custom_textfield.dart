import 'package:flutter/material.dart';
import 'package:news_app/color/constants.dart';

class AddCustomTextField extends StatelessWidget {
  final String hint;
  final int maxLine;

  const AddCustomTextField({Key? key, required this.hint, this.maxLine = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLine,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: KprimaryColor),
          border: buildInputBorder(),
          enabledBorder: buildInputBorder(),
          focusedBorder: buildInputBorder(KprimaryColor)),
    );
  }

  OutlineInputBorder buildInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
