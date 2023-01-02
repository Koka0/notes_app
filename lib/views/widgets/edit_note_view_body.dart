import 'package:flutter/material.dart';

import 'add_custom_textfield.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _titleController = TextEditingController();
    final TextEditingController _contentController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              icon: Icons.done,
              title: 'Edit Note',
            ),
            SizedBox(height: 35),
            AddCustomTextField(
              hint: 'Title',
              controller: _titleController,
            ),
            SizedBox(height: 20),
            AddCustomTextField(
              hint: 'Title',
              maxLine: 5,
              controller: _titleController,
            ),
          ],
        ),
      ),
    );
  }
}
