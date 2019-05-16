import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Floading Cell"),
        backgroundColor: Colors.green,

        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: ()=>debugPrint("Search")
          ),
          new IconButton(
              icon: new Icon(Icons.add),
              onPressed: ()=>debugPrint("add")
          )

        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            child: new SimpleFoldingCell(
                frontWidget: null,
                innerTopWidget: null,
                innerBottomWidget: null,

              cellSize: Size(MediaQuery.of(context).size.width,175),
              padding: EdgeInsets.all(10.0),
            ),

          )

        ],
      ),

    );
  }
}

