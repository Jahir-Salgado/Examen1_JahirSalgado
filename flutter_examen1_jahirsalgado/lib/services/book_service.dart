import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../models/book.dart';

class BookService {
  Future<List<Book>> fetchBooks() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final List<dynamic> data = json.decode(response);

    return data.map((json) => Book.fromJson(json)).toList();
  }
}