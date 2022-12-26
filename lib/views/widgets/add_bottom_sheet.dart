import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/add_custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: AddCustomTextField(),
        ),
      ],
    );
  }
}
