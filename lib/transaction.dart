import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:crud/image_picker';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Transaction', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(title: Text('Add Product'), leading: Icon(Icons.arrow_back, color: Colors.white)),
        body: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                    Container(margin: const EdgeInsets.only(bottom: 15), decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.grey))), child: Text("Product Information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                    Text("Product Image"),
                    // Container(
                    //   margin: const EdgeInsets.only(top: 10, bottom: 20),
                    //   width: 350, height: 200, color: Colors.blue[100],
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     //mainAxisSize: MainAxisSize.max,
                    //     crossAxisAlignment: CrossAxisAlignment.stretch,
                    //     children: <Widget>[
                    //       Icon(Icons.add, size: 40, color: Colors.blue,),
                    //     ],
                    //   ),
                    // ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20), 
                      width: 350, height: 150, 
                      decoration: BoxDecoration(
                        color: Colors.blue[100], 
                        border: Border.all(width: 1, color: Colors.blue)
                      ),
                      child: Icon(Icons.add, size: 40, color: Colors.blue)
                    ),
                    Text("Product Name"),
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        width: 350,
                        height: 50,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Product Name',
                          ),
                        )),
                    Text("Product ID"),
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        width: 350,
                        height: 50,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Product ID',
                          ),
                        )),
                    Text("Price"),
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        width: 350,
                        height: 50,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Rp xxxxxxxx',
                          ),
                        )),
                    Text("Stock"),
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        width: 350,
                        height: 50,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '10',
                          ),
                        )),
                    Text("Description"),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      width: 350, height: 100,
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a description',
                        ),
                      )),
                    Text("Low Stock Warning", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("Change value to 0 for disable low stock warning"),
                    Container(
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        width: 350,
                        height: 50,
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '10',
                          ),
                        )
                      ),
                    //container kosong
                    SizedBox(
                      width: 350, height: 40,
                      child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Add Product!")
                        )
                    ),
                    Container(
                      height: 10,
                    )
                  ]));
            }));
  }
}
