  import 'package:flutter/material.dart';

  void main() {
    runApp(const ExamenApp());
  }

  class ExamenApp extends StatelessWidget {
    const ExamenApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'examen1_jahirsalgado',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: BookListScreen(),
      );
    }
  }

  class BookListScreen extends StatelessWidget {
    final List<Book> books = [
      Book('A Christmas Carol in Prose', 'Charles Dickens'),
      Book('Frankenstein; Or, The Modern Prometheus', 'Mary Wollstonecraft Shelley'),
      Book('Moby Dick; Or, The Whale', 'Herman Melville'),
      Book('Old Granny Fox', 'Thornton W. Burgess'),
      Book('Pride and Prejudice', 'Jane Austen'),
      Book('The Mythical Man-Month', 'Frederick P. Brooks Jr.'),
      Book('The Scarlet Letter', 'Nathaniel Hawthorne'),
    ];

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
              child: const Row(
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
                  return ListTile(
                    leading: const Icon(Icons.book),
                    title: Text(books[index].title),
                    subtitle: Text(books[index].author),
                    trailing: Icon(
                      index.isEven ? Icons.check : Icons.download,
                      color: index.isEven ? Colors.green : Colors.black,
                    ),
                  );
                },
              ),
            ),
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: 'Tablero',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                  label: 'Calendario',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Por hacer',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notificaciones',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  label: 'Bandeja de entrada',
                ),
              ],
              currentIndex: 2,
              selectedItemColor: Colors.red,
              onTap: (index) {
                // Manejar la navegación aquí si es necesario
              },
            ),
          ],
        ),
      );
    }
  }

  class Book {
    final String title;
    final String author;

    Book(this.title, this.author);
  }