import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class Home extends StatefulWidget {



  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  var _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

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

      body: Container(
        color: Colors.white,
        child: new ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            new Container(
              child: new SimpleFoldingCell(
                  key: _foldingCellKey,
                  frontWidget: FrontWidget(),
                  innerTopWidget: InneTopWidget(),
                  innerBottomWidget: InneBottomWidget(),

                cellSize: Size(MediaQuery.of(context).size.width,175),
                padding: EdgeInsets.all(10.0),
              ),
            ),

          ],
        ),
      ),

    );

  }
  Container InneTopWidget(){
    return Container(
      color: Colors.green,
      child: new InkWell(
        onTap: (){
          _foldingCellKey?.currentState?.toggleFold();
        },
        child: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("First Data",
              style: TextStyle(
                fontSize: 21.0,
                color: Colors.white
              ),
              ),
              new SizedBox(height: 5.0,),
              new Text("Second Data",
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                ),
              ),
              new SizedBox(height: 5.0,),

            ],
          ),
        ),
      ),
    );
  }
  Container InneBottomWidget(){
    return Container(
      color: Colors.brown,
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.all(10.0),
            child: new Row(
              children: <Widget>[

                new Expanded(
                  flex: 1,
                   child: new Container(
                     height: 100.0,
                       width: 60.0,
                       child: new ClipRRect(
                         borderRadius: BorderRadius.circular(90.0),
                         child: Image.asset("asset/dd.jpg",
                           height: 60.0,
                           width: 60.0,
                           fit: BoxFit.cover,
                         ),
                       )
                   ),
                ),
                new Expanded(
                    flex: 1,
                    child: new Text("Profile Pictures..")
                )

              ],
            ),
          ),

        ],
      ),
    );
  }

  Container FrontWidget(){
    return Container(

      color: Colors.white,
      child: InkWell(
        child: new Row(
          children: <Widget>[

            Expanded(
              flex: 1,
              child: new Container(
                height: 175.0,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.green
                ),
                child: new Text("Loren",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: new Container(
                height: 175.0,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.brown
                ),
                child: new Text("Payment GateWay System",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white
                ),
                ),
              ),
            )

          ],
        ),
        onTap: (){
          _foldingCellKey?.currentState?.toggleFold();
        },
      ),
    );
  }
}



