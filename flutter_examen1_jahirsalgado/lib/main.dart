import 'package:flutter/material.dart';
import 'core/app_router.dart';

void main() {
  runApp(ExamenApp());
}

class ExamenApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'examen1_jahirsalgado',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routerConfig: _appRouter.router,
    );
  }
}