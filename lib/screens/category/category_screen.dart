import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'Animal Stories',
      'Wisdom & Moral Stories',
      'Family & Community Stories',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop(); // This will now work
          },
        ),
        title: const Text('Categories'),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return ListTile(
            title: Text(category),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              context.push('/stories/$category');
            },
          );
        },
      ),
    );
  }
}

