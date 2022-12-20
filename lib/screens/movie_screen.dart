import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../theme.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen(
      {super.key,
      required this.img,
      required this.title,
      required this.details});

  final String img;
  final String title;
  final String details;

  ThemeData theme = MovieTheme.dark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(img),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: MovieColors.orangeColor,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: MovieColors.orangeColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                Text(details),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
