import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/custom_app_bar.dart';
import 'package:news_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
    body: NotesViewWidget(),

    );
  }
}



