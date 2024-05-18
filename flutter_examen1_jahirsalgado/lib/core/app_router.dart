import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/book_list_screen.dart';
import '../screens/add_book_screen.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BookListScreen(),
      ),
      GoRoute(
        path: '/add',
        builder: (context, state) => AddBookScreen(),
      ),
    ],
  );
}