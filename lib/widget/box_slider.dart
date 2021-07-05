import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/model_movie.dart';
import '../screen/detail_screen.dart';
import '../controllers/test_controller.dart';

class BoxSlider extends StatelessWidget {
  final List<Movie> movies;
  final String title;
  final TestController controller = Get.put(TestController());
  BoxSlider({required this.movies, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title),
            Obx(() => Text('Click: ${controller.count}')),
            FloatingActionButton(child: Icon(Icons.add), onPressed: controller.increment),

            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: makeBoxImages(context, movies)
              ),
            )
          ],
        )
    );
  }
}

List<Widget> makeBoxImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];
  for(var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Get.to(
            () => (DetailScreen(movie: movies[i]))
          );
          // Navigator.of(context).push(MaterialPageRoute<Null>(
          //     fullscreenDialog: true,
          //     builder: (BuildContext context) {
          //       return DetailScreen(
          //           movie: movies[i]
          //       );
          //     }
          // ));
        },
        child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/' + movies[i].poster),
          ),
        )
      )
    );
  }
  return results;
}