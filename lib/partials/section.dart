import 'package:flutter/material.dart';
import 'package:movies/models/section_item.dart';
import 'package:movies/partials/movie.dart';
import 'package:movies/partials/sub_title.dart';
import 'package:movies/partials/title.dart';

class Section extends StatelessWidget {
  final SectionItem _sectionItem;
  const Section(this._sectionItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTitle(_sectionItem.titleText),
        SubTitle(_sectionItem.subTitleText),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 20
        ),
        FutureBuilder<List<dynamic>>(
            future: _sectionItem.movies,
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
<<<<<<< HEAD
                return Center(child: const CircularProgressIndicator());
=======
                return const Center(child: CircularProgressIndicator());
>>>>>>> 830b9a892d3068f257aad9bd094529996216ca48
              }
            },
        )
      ],
    );
  }
}
