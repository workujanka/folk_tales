import 'package:flutter/material.dart';
import 'app_router.dart';

void main() {
  runApp(const FolktalesApp());
}

class FolktalesApp extends StatelessWidget {
  const FolktalesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Oromo Folktales',
      routerConfig: appRouter,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.brown,
      ),
    );
  }
}

