import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_bottom_sheet.dart';
import 'package:note_app/views/widgets/notes_view_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  //
  // Create Method _showForm

  void _showForm(BuildContext ctx, int? itmKey) async {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        context: ctx,
        builder: (context) {
          return const AddNoteBottomSheet();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _showForm(context, null);
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewWidget());
  }
}
