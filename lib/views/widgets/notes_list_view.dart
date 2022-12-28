import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return NoteItem();
        });
  }
}
