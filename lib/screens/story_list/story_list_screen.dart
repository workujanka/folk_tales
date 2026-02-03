import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StoryListScreen extends StatelessWidget {
  final String category;

  const StoryListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final stories = _getStoriesForCategory(category);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: stories.length,
        itemBuilder: (context, index) {
          final story = stories[index];

          return ListTile(
            title: Text(story),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              context.push('/story/$story');
            },
          );
        },
      ),
    );
  }

  List<String> _getStoriesForCategory(String category) {
    switch (category) {
      case 'Animal Stories':
        return [
          'The Clever Fox',
          'The Lion and the Hare',
          'The Tortoise Who Outsmarted Everyone',
        ];
      case 'Wisdom & Moral Stories':
        return [
          'The Old Man’s Advice',
          'The Value of Patience',
          'The Honest Farmer',
        ];
      case 'Family & Community Stories':
        return [
          'The Lost Calf',
          'The Generous Neighbor',
          'The Family That Stood Together',
        ];
      default:
        return [];
    }
  }
}

