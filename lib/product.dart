import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Product', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(title: Text('Products')),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Image.network('https://th.bing.com/th/id/OIP.kYD1SADoXSSxRuvxPJbEYQHaHa?pid=ImgDet&rs=1'),
                    trailing: Icon(Icons.delete),
                    title: Text('Chicken Wings'),
                    subtitle: Text('Make your day better'),
                  ));
            }),
        floatingActionButton: FloatingActionButton.extended(onPressed: () {}, icon: Icon(Icons.add), label: Text('Add')
        )
        );
  }
}
