import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/model/note_model.dart';

import '../../color/constants.dart';

class CustomBottom extends StatefulWidget {
  const CustomBottom({Key? key}) : super(key: key);

  @override
  State<CustomBottom> createState() => _CustomBottomState();
}

class _CustomBottomState extends State<CustomBottom> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // clear the textfields
        _titleController.text = '';
        _contentController.text = '';

        Navigator.of(context).pop();
      },
      child: Container(
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
      ),
    );
  }
}
