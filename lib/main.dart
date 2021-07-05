import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/bottom_bar.dart';

//screen
import 'screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Woongflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              HomeScreen(),
              Container(
                  child: Center(
                      child: Text('검색')
                  )
              ),
              Container(
                  child: Center(
                      child: Text('저장한 컨텐츠')
                  )
              ),
              Container(child: Center(
                  child: Text('더보기')
              )),
            ],
          ),
          bottomNavigationBar: BottomBar(),
        )
      )
    );
  }
}