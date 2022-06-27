import 'package:flutter/material.dart';
import './catScreen.dart';
import './catmealScreen.dart';
import 'meal_detail.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'flutter',
      // theme: ThemeData(
      //
      // ),
      // home: CatScreen(),
      routes: {
        '/': (context) => CatScreen(),
        CatMealScreen.routName: (context) => CatMealScreen(),
        MealDetals.routName: (context) => MealDetals(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("meal"),
      // ),
      // body: Container(),
    );
  }
}
