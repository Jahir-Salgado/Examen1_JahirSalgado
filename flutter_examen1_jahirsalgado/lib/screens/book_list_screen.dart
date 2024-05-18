import 'package:flutter/material.dart';
import '../models/book.dart';
import '../services/book_service.dart';
import '../widgets/book_list_item.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> books = [];

  @override
  void initState() {
    super.initState();
    _loadBooks();
  }

  Future<void> _loadBooks() async {
    BookService bookService = BookService();
    List<Book> loadedBooks = await bookService.fetchBooks();
    setState(() {
      books = loadedBooks;
    });
  }

  void _addBook(Book book) {
    setState(() {
      books.add(book);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de la tarea'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  '917 PROGRAMACIÓN MÓVIL 2024Q2',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                return BookListItem(book: books[index]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add').then((newBook) {
                if (newBook != null) {
                  _addBook(newBook as Book);
                }
              });
            },
            child: Text('Agregar Libro'),
          ),
        ],
      ),
    );
  }
}