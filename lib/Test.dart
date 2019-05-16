import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
class FoldingCellSimpleDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new Container(
        color: Colors.white,
        child: SimpleFoldingCell(
          frontWidget: FrontWidget(),
          innerTopWidget: InneTopWidget(),
          innerBottomWidget: InneBottomWidget(),

          cellSize: Size(MediaQuery.of(context).size.width,175),
          padding: EdgeInsets.all(10.0),
        ),
    ),

    );
  }
}

FrontWidget() {
}