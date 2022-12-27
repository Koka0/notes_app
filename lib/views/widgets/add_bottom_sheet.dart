import 'package:flutter/material.dart';

import 'package:news_app/views/widgets/add_custom_textfield.dart';

import 'custom_bottom.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        child: AnimatedPadding(
          duration: kThemeAnimationDuration,
          padding: mediaQueryData.viewInsets,
          child: Column(
            children: const [
              SizedBox(height: 32),
              AddCustomTextField(
                hint: 'Title',
              ),
              SizedBox(height: 20),
              AddCustomTextField(
                hint: 'Content',
                maxLine: 5,
              ),
              SizedBox(height: 20),
              CustomBottom(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
