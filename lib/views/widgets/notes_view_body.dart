import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/custom_app_bar.dart';

import 'notes_list_view.dart';

class NotesViewWidget extends StatelessWidget {
  const NotesViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
