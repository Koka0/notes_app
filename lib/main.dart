import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //initialize Hive
  //
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  // open the Box
  //
  await Hive.openBox('noteBox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Typography.whiteCupertino),
          brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
