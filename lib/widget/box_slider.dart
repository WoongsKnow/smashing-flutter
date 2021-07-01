import 'package:flutter/material.dart';
import '../model/model_movie.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;
  final String title;
  BoxSlider({required this.movies, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title),
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: makeBoxImages(movies)
              ),
            )
          ],
        )
    );
  }
}

List<Widget> makeBoxImages(movies) {
  List<Widget> results = [];
  for(var i = 0; i < movies.length; i++) {
    results.add(
      Container(
        padding: EdgeInsets.only(right: 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('images/' + movies[i].poster),
        ),
      )
    );
  }
  return results;
}