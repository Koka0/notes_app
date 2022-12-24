import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Flutter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            subtitle: Text(
              'Start to build your career with Nordin',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
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
    );
  }
}
