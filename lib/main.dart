import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inventori/home.dart';
import 'package:inventori/home_list.dart';
import 'package:inventori/trans_list.dart';
import 'package:inventori/transaction_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Program Inventori',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Main(title: 'Flutter Inventori'),
    );
  }
}

class Main extends StatelessWidget {
  final String title;
  const Main({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tansactions',
          ),
        ],
      ),
      tabBuilder: (BuildContext contect, int index) {
        switch (index) {
          case 0:
            return Home();
          case 1:
            return HomeList();
          case 2:
            return TransList();
          default:
            return Home();
        }
      },
    );
  }
}
