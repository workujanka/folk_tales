import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/home/home_screen.dart';
import 'screens/category/category_screen.dart';
import 'screens/about/about_screen.dart';
import 'screens/settings/settings_screen.dart';
import 'screens/story_list/story_list_screen.dart';
import 'screens/story_details/story_details_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/category',
      builder: (context, state) => const CategoryScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/stories/:category',
      builder: (context, state) {
        final category = state.pathParameters['category']!;
        return StoryListScreen(category: category);
      },
    ),
    GoRoute(
      path: '/story/:title',
      builder: (context, state) {
        final title = state.pathParameters['title']!;
        return StoryDetailsScreen(title: title);
      },
    ),
  ],
);

