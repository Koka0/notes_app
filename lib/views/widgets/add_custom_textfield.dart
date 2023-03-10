import 'package:flutter/material.dart';

import '../../color/constants.dart';

class AddCustomTextField extends StatelessWidget {
  final String hint;
  final int maxLine;
  final TextEditingController controller;

  const AddCustomTextField(
      {Key? key,
      required this.hint,
      this.maxLine = 1,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _contentController = TextEditingController();
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      cursorColor: KprimaryColor,
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
