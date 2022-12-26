import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/add_custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 32),
          AddCustomTextField(
            hint: 'Title',
          ),
          SizedBox(height: 20),
          AddCustomTextField(
            hint: 'Title',
            maxLine: 5,
          ),
        ],
      ),
    );
  }
}
