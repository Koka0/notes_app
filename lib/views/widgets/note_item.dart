import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'edit_note_view_body.dart';

class NoteItem extends StatefulWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  List<Map<String, dynamic>> _items = [];
  final _noteBox = Hive.box('noteBox');

  //
  // Create new Item
  Future<void> _createItem(Map<String, dynamic> newItem) async {
    await _noteBox.add(newItem);
    print('amount data is ${_noteBox.length}');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const EditNoteViewBody(),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 24, bottom: 20),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Lorem Ipsum',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 16),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text(
                'May12,2022',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
