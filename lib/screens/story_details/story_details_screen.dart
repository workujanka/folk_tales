import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

class StoryDetailsScreen extends StatelessWidget {
  final String title;

  const StoryDetailsScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final description = _getDescription(title);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          description,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  String _getDescription(String title) {
    switch (title) {
      case 'The Clever Fox':
        return 'A clever fox uses wit and quick thinking to escape danger and outsmart stronger animals.';
      case 'The Lion and the Hare':
        return 'A brave hare teaches a mighty lion an important lesson about pride and humility.';
      case 'The Tortoise Who Outsmarted Everyone':
        return 'A slow but wise tortoise surprises the forest animals with patience and intelligence.';
      case 'The Old Man’s Advice':
        return 'An elder shares timeless wisdom that helps a young person avoid a costly mistake.';
      case 'The Value of Patience':
        return 'A story that reminds us that patience often leads to better outcomes than rushing.';
      case 'The Honest Farmer':
        return 'A hardworking farmer’s honesty brings unexpected rewards from the community.';
      case 'The Lost Calf':
        return 'A family searches for a missing calf and learns the importance of cooperation.';
      case 'The Generous Neighbor':
        return 'A kind neighbor helps a struggling family, showing the power of generosity.';
      case 'The Family That Stood Together':
        return 'A family overcomes hardship by supporting each other through difficult times.';
      default:
        return 'No description available.';
    }
  }
}

