import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class TranslateResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HAPUE 乐翻'), backgroundColor: Colors.blue),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Image.asset('assets/images/slow-property-sign-k-1311.png'),
            ),
            Row(
              children: <Widget>[
                Text("    原文提取 ", style: TextStyle(fontSize: 20))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 150,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    child: Text(
                      "slow",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
                Container(
                  width: 50,
                  height: 150,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    child: Icon(Icons.play_arrow),
                    color: Colors.white,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
            ),
            Row(
              children: <Widget>[
                Text("    翻译结果 ", style: TextStyle(fontSize: 20))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 150,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    child: Text(
                      "慢行",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                ),
                Container(
                  width: 50,
                  height: 150,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    child: Icon(Icons.play_arrow),
                    color: Colors.white,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
            ),
            Container(
              width: 150,
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2,
                        color: Colors.white,
                        style: BorderStyle.solid)),
                child: Text("再来一拍"),
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new MyApp()),
                  );
                },
              ),
            ),
          ],
        ));
  }

  Widget showLoad() {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new CircularProgressIndicator(),
              width: 60.0,
              height: 60.0,
              alignment: Alignment.center,
            )
          ],
        )
      ],
    );
  }
}
