import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';
import '../model/model_movie.dart';
import '../controllers/test_controller.dart';


class DetailScreen extends StatefulWidget {
  final Movie movie;
  DetailScreen({required this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  final TestController c = Get.find();
  @override
  initState() {
    super.initState();
    like = widget.movie.like;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              // Text('sefsf' + widget.movie.title),
              Stack(
                children: <Widget>[
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('./images/' + widget.movie.poster),
                        fit: BoxFit.cover
                      )
                    ),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10, sigmaY: 10
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.black.withOpacity(0.1),
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 45, 0, 10),
                                  child: Image.asset(
                                    './images/' + widget.movie.poster
                                  ),
                                  height: 300,
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Text(
                                    '99% ?????? 2019 15 + ?????? 1??? + ${c.count}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 13)
                                  )
                                ),
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Text(
                                    widget.movie.title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    )
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(Icons.play_arrow, color: Colors.white),
                                          Text('??????', style: TextStyle(color: Colors.white))
                                        ],
                                      )
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(widget.movie.toString())
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '????????? ??????, ?????????, ?????????\n?????????: ?????????, ?????????',
                                    style: TextStyle(
                                      color: Colors.white60,
                                      fontSize: 12
                                    )
                                  )
                                )
                              ],
                            ),
                          ),

                        ),
                      )
                    ),
                  ),
                  Positioned(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    )
                  )
                ],
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            like ? Icon(Icons.check) : Icon(Icons.add),
                            Padding(
                              padding: EdgeInsets.all(5)
                            ),
                            Text(
                              '?????? ?????? ?????????',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white60
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.thumb_up),
                          Padding(
                              padding: EdgeInsets.all(5)
                          ),
                          Text(
                              '??????',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white60
                              )
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.send),
                          Padding(
                              padding: EdgeInsets.all(5)
                          ),
                          Text(
                              '??????',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white60
                              )
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              makeMenuButton()
            ],
          ),
        ),
      )
    );
  }
  Widget makeMenuButton() {
    return Container(

    );
  }
}
