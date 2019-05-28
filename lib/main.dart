import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          canvasColor: Colors.grey
      ),
      home: MyHomePage(title: 'CART'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Row(
          children: <Widget>[
            new Icon(Icons.shopping_cart),
            new Padding(padding: const EdgeInsets.only(left: 10.0)),
            Text(widget.title),
          ],
        )
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
            height: 140.0,
            child: new Card(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // first column
                  new Container(
                    //color: Colors.amber,
                    width: 137.0,
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0, right: 10.0),
                    child: new FittedBox(
                      alignment: Alignment.center,
                      child: new CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.black,
                        child: new Center(
                          child: new CircleAvatar(
                            backgroundImage: new ExactAssetImage("assets/hawker-1.jpg"),
                            radius: 57.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // 2nd Column
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: new Text("Roast Chicken", style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
                      ),
                      new Text("Served with rice and Vegetables", style: new TextStyle(fontStyle: FontStyle.italic, fontSize: 12.0)),
                      new Container(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: new Row(
                          children: <Widget>[
                            new Text("₱150.00", style: new TextStyle(fontWeight: FontWeight.bold)),
                            new Padding(padding: const EdgeInsets.only(left: 10.0)),
                            new Icon(Icons.remove_circle),
                            new Padding(padding: const EdgeInsets.only(left: 10.0)),
                            new Text("0", style: new TextStyle(fontWeight: FontWeight.bold)),
                            new Padding(padding: const EdgeInsets.only(left: 10.0)),
                            new Icon(Icons.add_circle),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
          ),
          // 2nd menu item
          new Container(
            margin: const EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
            height: 140.0,
            child: new Card(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // first column
                    new Container(
                      //color: Colors.amber,
                      width: 137.0,
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 15.0, right: 10.0),
                      child: new FittedBox(
                        alignment: Alignment.center,
                        child: new CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.black,
                          child: new Center(
                            child: new CircleAvatar(
                              backgroundImage: new ExactAssetImage("assets/hawker-2.jpg"),
                              radius: 57.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // 2nd Column
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: new Text("Braised Beef Noodles", style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
                        ),
                        new Text("with Tender beef and Siomai", style: new TextStyle(fontStyle: FontStyle.italic, fontSize: 12.0)),
                        new Container(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: new Row(
                            children: <Widget>[
                              new Text("₱150.00", style: new TextStyle(fontWeight: FontWeight.bold)),
                              new Padding(padding: const EdgeInsets.only(left: 10.0)),
                              new Icon(Icons.remove_circle),
                              new Padding(padding: const EdgeInsets.only(left: 10.0)),
                              new Text("0", style: new TextStyle(fontWeight: FontWeight.bold)),
                              new Padding(padding: const EdgeInsets.only(left: 10.0)),
                              new Icon(Icons.add_circle),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
