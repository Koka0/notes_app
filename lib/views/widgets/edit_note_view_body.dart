import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/add_custom_textfield.dart';
import 'package:news_app/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            SizedBox(height: 50),
            CustomAppBar(
              icon: Icons.done,
              title: 'Edit Note',
            ),
            SizedBox(height: 35),
            AddCustomTextField(hint: 'Title'),
            SizedBox(height: 20),
            AddCustomTextField(
              hint: 'Title',
              maxLine: 5,
            ),
          ],
        ),
      ),
    );
  }
}
