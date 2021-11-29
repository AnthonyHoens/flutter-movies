import 'package:flutter/material.dart';
import 'package:movies/models/section_item.dart';
import 'package:movies/styles/constants.dart';
import 'package:intl/intl.dart';

class Movie extends StatelessWidget {
  final MovieItem _movieItem;
  const Movie(this._movieItem, {Key? key}) : super(key: key);


<<<<<<< HEAD

=======
>>>>>>> 830b9a892d3068f257aad9bd094529996216ca48
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
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
                'http://image.tmdb.org/t/p/w500/' + _movieItem.image,
                width: 150,
                height: 150 * 1.5,
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
<<<<<<< HEAD
                _movieItem.releaseDate,
=======
                DateFormat("d MMMM y").format(DateTime.parse(_movieItem.releaseDate)),
>>>>>>> 830b9a892d3068f257aad9bd094529996216ca48
                textWidthBasis: TextWidthBasis.parent,
                style: movieDateStyle,
              ),
            ),
          ],
        )
      ),
    );
  }
}
