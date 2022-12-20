import 'package:desafio_api_cubos/repository/movies_repository.dart';
import 'package:desafio_api_cubos/resources/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../resources/strings.dart';
import '../theme.dart';
import '../widgets/movies_category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final moviesRepository = MoviesRepository();

  ThemeData theme = MovieTheme.light;

  bool isDark = false;

  void toggleSwitch(bool value) {
    if (isDark) {
      theme = MovieTheme.light;
    } else {
      theme = MovieTheme.dark;
    }
    setState(() {
      isDark = !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.titleApp),
            actions: [
              Center(
                child: Container(
                  width: 37,
                  height: 27,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: MovieColors.orangeColor)),
                  child: Transform.scale(
                    scale: 0.7,
                    child: Switch(
                        value: isDark,
                        onChanged: (value) {
                          toggleSwitch(value);
                        }),
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      Strings.populars,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const[
                    Text(Strings.topRated),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
            MoviesCategory(future: moviesRepository.getPopular()),
            MoviesCategory(future: moviesRepository.getTopRated())
          ]),
        ),
      ),
    );
  }
}
