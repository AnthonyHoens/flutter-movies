import 'package:flutter/material.dart';
import 'package:movies/models/movie_slider_item.dart';
import 'package:movies/screens/movie_show.dart';
import 'package:movies/styles/constants.dart';
import 'package:intl/intl.dart';

class Movie extends StatelessWidget {
  final MovieItem _movieItem;
  const Movie(this._movieItem, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (contex) => MovieScreen(_movieItem)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: SizedBox(
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: borderRadiusItem,
                  boxShadow: boxShadowItem,
                ),
                child: Image.network(
                  'http://image.tmdb.org/t/p/w154/${_movieItem.posterPath}',
                  width: 154,
                  height: 231,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 5,
                  left: 5,
                  top: 10,
                  bottom: 3,
                ),
                child: Text(
                  _movieItem.title,
                  textWidthBasis: TextWidthBasis.parent,
                  style: movieTitleStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Text(
                  DateFormat("d MMMM y").format(DateTime.parse(_movieItem.releaseDate)),
                  textWidthBasis: TextWidthBasis.parent,
                  style: movieDateStyle,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
