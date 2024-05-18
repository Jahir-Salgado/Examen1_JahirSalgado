import 'package:flutter/material.dart';
import '../models/book.dart';

class BookListItem extends StatelessWidget {
  final Book book;

  BookListItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.book),
      title: Text(book.title),
      subtitle: Text(book.author),
    );
  }
}