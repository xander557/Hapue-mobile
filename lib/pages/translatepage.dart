import 'package:flutter/material.dart';
import 'package:my_app/pages/translatedResult.dart';

class TranslatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('HAPUE 乐翻'), backgroundColor: Colors.blue),
        body: Column(
          children: <Widget>[
            Container(
              height: 500,
              child: Image.asset('assets/images/slow-property-sign-k-1311.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  child: MaterialButton(
                    shape: CircleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    child: Text(
                      "翻译",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.grey,
                    textColor: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new TranslateResult()),
                      );
                    },
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  child: MaterialButton(
                    shape: CircleBorder(
                        side: BorderSide(
                            width: 2,
                            color: Colors.black,
                            style: BorderStyle.solid)),
                    child: Text(
                      "识别",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: Colors.grey,
                    textColor: Colors.black,
                    onPressed: () {},
                  ),
                ),
              ],
            )
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
