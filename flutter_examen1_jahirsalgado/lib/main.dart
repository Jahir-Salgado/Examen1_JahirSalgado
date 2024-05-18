import 'package:flutter/material.dart';
import 'screens/book_list_screen.dart';

void main() {
  runApp(const ExamenApp());
}

class ExamenApp extends StatelessWidget {
  const ExamenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookListScreen(),
    );
  }
}