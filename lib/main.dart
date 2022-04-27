import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:crud/home.dart';
import 'package:crud/transaction.dart';
import 'package:crud/product.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Layout Inventori',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Learning'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key? key, required this.title}): super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoTheme.of(context).barBackgroundColor.withOpacity(1.0),
        items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Product',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Transaction',
            ),
          ],
      ),
      tabBuilder: (BuildContext context, int index){
        switch(index){
          case 0:
            return Home();
            break;
          case 1:
            return Product();
            break;
          case 2:
            return Transaction();
            break;
          default:
            return Home();  
        }
      }
    );
  }
}