import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oromo Folktales'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Categories'),
            onTap: () => context.push('/category'),
          ),
          ListTile(
            title: const Text('About Oromo Folktales'),
            onTap: () => context.push('/about'),
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () => context.push('/settings'),
          ),
        ],
      ),
    );
  }
}
