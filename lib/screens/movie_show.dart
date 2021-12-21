import 'package:flutter/material.dart';
import 'package:movies/models/movie_slider_item.dart';
import 'package:movies/screens/side_bar.dart';
import 'package:movies/styles/constants.dart';

class MovieScreen extends StatelessWidget {
  final MovieItem _movie;

  const MovieScreen(this._movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    'http://image.tmdb.org/t/p/w500/${_movie.backdropPath}',
                    width: MediaQuery.of(context).size.width
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: borderRadiusItem,
                              boxShadow: boxShadowItem,
                            ),
                            child: const Icon(
                              Icons.clear
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 70,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: borderRadiusItem,
                          boxShadow: boxShadowItem,
                        ),
                        child: Image.network(
                          'http://image.tmdb.org/t/p/w154/${_movie.posterPath}',
                          width: 130,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text('Coucou'),
                      )
                  ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
                bottom: 20,
              ),
              child: SizedBox(
                width:  MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _movie.title,
                      style: const TextStyle(
                        fontFamily: mainFontFamily,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: mainColor,
                      ),
                    ),
                    Text(
                      _movie.originalTitle,
                      style: TextStyle(
                        fontFamily: mainFontFamily,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Description',
                      style: TextStyle(
                        fontFamily: mainFontFamily,
                        fontSize: 24,
                        color: mainColor,
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      _movie.overview,
                      style: TextStyle(
                        fontFamily: mainFontFamily,
                        color: Colors.grey
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
