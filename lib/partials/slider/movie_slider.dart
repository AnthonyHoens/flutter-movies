import 'package:flutter/material.dart';
import 'package:movies/models/movie_slider_item.dart';
import 'package:movies/partials/movie.dart';
import 'package:movies/partials/sub_title.dart';
import 'package:movies/partials/title.dart';

class MovieSlider extends StatelessWidget {
  final MovieSliderItem _movieSliderItem;
  const MovieSlider(this._movieSliderItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTitle(_movieSliderItem.titleText),
          SubTitle(_movieSliderItem.subTitleText),
          const SizedBox(
              height: 20
          ),
          FutureBuilder<List<dynamic>>(
              future: _movieSliderItem.movies,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if(snapshot.hasData) {
                  return SizedBox(
                    height: 310,
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Movie(snapshot.data[index]);
                        },
                        scrollDirection: Axis.horizontal,
                    ),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
          )
        ],
      ),
    );
  }
}
