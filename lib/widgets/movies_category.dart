import 'package:flutter/material.dart';

import '../models/movie_model.dart';
import '../screens/movie_screen.dart';

class MoviesCategory extends StatelessWidget {
  const MoviesCategory({
    Key? key,
    required this.future,
  }) : super(key: key);

  final Future<List<MovieModel>> future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieModel>>(
      future: future,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return GridView.count(
            childAspectRatio: 0.5,
            crossAxisCount: 3,
            children: snapshot.data!
                .map<Widget>(
                  (movies) => InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return MovieScreen(
                              details: movies.details,
                              img: movies.detailsImg,
                              title: movies.nameMovie);
                        }),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          Image.network(movies.img),
                          Text(movies.nameMovie)
                        ],
                      ),
                    ),
                  ),
                )
                .toList());
      },
    );
  }
}
