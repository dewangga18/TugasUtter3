import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Home', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Home'), leading: IconButton(icon: Icon(Icons.home), onPressed: () {})),
        body: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Welcome', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Text('Aaron Evanjulio D', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Row(children: <Widget>[
                  Expanded(
                      child: Column(children: <Widget>[
                    Text('Product in', style: const TextStyle(fontSize: 20)),
                    Text('10', style: const TextStyle(fontSize: 40))
                  ])),
                  Icon(Icons.arrow_downward, size: 40),
                  Expanded(
                      child: Column(children: <Widget>[
                    Text('Product out', style: const TextStyle(fontSize: 20)),
                    Text('8', style: const TextStyle(fontSize: 40))
                  ])),
                  Icon(Icons.arrow_upward, size: 40)
                ]),
                Text('Low Stock', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text('Stock Warning', style: const TextStyle(fontSize: 15, color: Colors.red, fontWeight: FontWeight.bold)),
                Row(children: <Widget>[
                  Card(
                      elevation: 2,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.kYD1SADoXSSxRuvxPJbEYQHaHa?pid=ImgDet&rs=1',
                            width: 80,
                            height: 80,
                          ))),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Text('Chicken Wings 1', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Make your mood better', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                    RaisedButton(child: Text('Stok 1', style: TextStyle(color: Colors.white)), color: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))), onPressed: () {})
                  ])
                ]),
                Row(children: <Widget>[
                  Card(
                      elevation: 2,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.kYD1SADoXSSxRuvxPJbEYQHaHa?pid=ImgDet&rs=1',
                            width: 80,
                            height: 80,
                          ))),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Text('Chicken Wings 2', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Make your mood better', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                    RaisedButton(child: Text('Stok 1', style: TextStyle(color: Colors.white)), color: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))), onPressed: () {})
                  ])
                ]),
                Row(children: <Widget>[
                  Card(
                      elevation: 2,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          child: Image.network(
                            'https://th.bing.com/th/id/OIP.kYD1SADoXSSxRuvxPJbEYQHaHa?pid=ImgDet&rs=1',
                            width: 80,
                            height: 80,
                          ))),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Text('Chicken Wings 3', textAlign: TextAlign.left, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Make your mood better', textAlign: TextAlign.left, style: const TextStyle(fontSize: 15)),
                    RaisedButton(child: Text('Stok 1', style: TextStyle(color: Colors.white)), color: Colors.red, shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))), onPressed: () {})
                  ])
                ]),
                Align(alignment: Alignment.bottomRight, child: RaisedButton.icon(color: Colors.blue, label: Text('new Transaction', style: TextStyle(color: Colors.white)), icon: Icon(Icons.add, color: Colors.white), shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))), onPressed: () {}))
              ],
            )));
  }
}
